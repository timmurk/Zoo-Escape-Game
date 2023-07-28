#include <vector>
#include <mutex>
#include <thread>
#include "util.h"

enum ObjectType {
    objectAnimal,
    objectPlayer,
    noObject
};


class Creature {
public:
    // constructor
    Creature() : _type(ObjectType::noObject), _id(_idCnt++) {};
    virtual ~Creature();

    // getter / setter
    int GetId() {
        return _id;
    }

    void SetId(int id) {
        _id = id;
    }
    void setPosition(double x, double y);
    void getPosition(double &x, double &y);
    ObjectType getType() { return _type; }

    double GetX() { return head_x; };
    double GetY() { return head_y; };

    virtual void Update(){};
    std::vector<std::thread> threads; // holds all threads that have been launched within this object
    
protected:
    ObjectType _type;                 // identifies the class type
    int _id;                          // every traffic object has its own unique id
    double head_x, head_y;            // vehicle position in pixels
    static std::mutex _mtx;           // mutex shared by all traffic objects for protecting cout 
    Direction d;                      // direction of object

private:
    static int _idCnt; // global variable for counting object ids
};
