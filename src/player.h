#ifndef Player_H
#define Player_H

#include <vector>
#include <mutex>
#include <iostream>

#include "SDL.h"
#include "util.h"
#include "objects.h"

class Player : public Creature {
public:
    double head_x, head_y;
    Player(int grid_width, int grid_height)
        : grid_width(grid_width),
          grid_height(grid_height),
          head_x(8.0),
          head_y(15.0) 
          {
            std::cout << "Player created " << _id << " " << std::this_thread::get_id() << "\n";
          }

    Player(Player const& other) {
        head_x = other.head_x;
        head_y = other.head_y;
        speed = other.speed;
    }

    Player& operator=(Player const& other) {
      if (&other != this) {
        // safely copy the data
        head_x = other.head_x;
        head_y = other.head_y;
        speed = other.speed;
      }
      return *this;
    }

    void Update();

    Direction direction = Direction::kNone;
    Direction prev_dir = direction;

    float speed{1};
    bool alive{true};

    int getW() const { return grid_width; };
    int getH() const { return grid_height; };

    void ObstacleUpdate(float new_head_x, float new_head_y);

private:
    void UpdateHead();

    int grid_width;
    int grid_height;
};

#endif