#ifndef MONSTER_H
#define MONSTER_H

#include <vector>
#include <random>
#include "player.h"

class Arrows;

static Direction GetRandomDir() {
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dir_distr(0, 3);
    auto dir_first = dir_distr(gen);
    Direction direction = Direction::kNone;
    switch (dir_first) {
        case 0:
            direction = Direction::kUp;
            break;
        case 1:
            direction = Direction::kDown;
            break;
        case 2:
            direction = Direction::kLeft;
            break;
        case 3:
            direction = Direction::kRight;
            break;
    }
    return direction;
}

class Animal : public Creature, public std::enable_shared_from_this<Animal> {
public:
    Animal() {
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_int_distribution<> distr_x(0, 15);
        head_y = 0.;
        head_x = static_cast<double>(distr_x(gen));
        direction = GetRandomDir();
        prev_dir = direction;
    }

    // miscellaneous
    std::shared_ptr<Animal> get_shared_this() { return shared_from_this(); }

    Direction direction = Direction::kNone;
    Direction prev_dir = direction;

    void Update(Arrows& arrows);
    void ObstacleUpdate(double new_head_x, double new_head_y);
    bool CheckCaught(Arrows& arrows);
    
    void CleverRound(double new_head_x, double new_head_y, int& pos_x, int& pos_y, bool flag);
    void UpdatePosDouble();

    int getW() const { return grid_width; };
    int getH() const { return grid_height; };

    double speed{1.};
    int size{1};

    bool lock{false};

 private:
  void UpdateHead();
  int grid_width{16};
  int grid_height{16};
};

#endif