#include <random>
#include "animal.h"
#include "game.h"
#include "player.h"
#include "util.h"

#include <cmath>
#include <iostream>
#include <thread>


void Animal::Update(Arrows& arrows) {
    lock = false;
    while (true) {
        std::this_thread::sleep_for(std::chrono::milliseconds(250));
        UpdateHead();
        if (CheckCaught(arrows)) {
            _mtx.lock();
            total_animals -= 1;
            _mtx.unlock();
            return;
        }
    }
}

bool CheckIntersection(float f_x, float f_y, float s_x, float s_y) {
    if (f_x < s_x + 1 && f_x + 1 > s_x &&
        f_y < s_y + 1 && f_y + 1 > s_y) {
        return true;
    } else {
        return false;
    }
}

bool Animal::CheckCaught(Arrows& arrows) {    
    for (auto& arrow : arrows.getArrows()) {
        if (CheckIntersection(GetX(), GetY(), arrow.x, arrow.y)) {
            lock = true;
            return true;
        }
    }
    return false;
}

void Animal::CleverRound(double new_head_x, double new_head_y, int& pos_x, int& pos_y, bool flag=false) {
    if (direction == Direction::kRight) {
        pos_x = std::ceil(new_head_x);
    } else if (direction == Direction::kDown) {
        pos_y = std::ceil(new_head_y);
    }
    return;
    if (flag) {
        if (direction == Direction::kLeft) {
            pos_x = std::ceil(new_head_x);
        } else if (direction == Direction::kUp) {
            pos_y = std::ceil(new_head_y);
        }
    }
}

void Animal::UpdatePosDouble() {
    switch (direction) {
        case Direction::kRight:
            head_x = std::ceil(head_x);
            break;
        case Direction::kLeft:
            head_x = std::ceil(head_x);
            break;
        case Direction::kUp:
            head_y = std::ceil(head_y);
            break;
        case Direction::kDown:
            head_y = std::ceil(head_y);
            break;
        default:
            break;
    }
}

void Animal::ObstacleUpdate(double new_head_x, double new_head_y) {
  int pos_x = static_cast<int>(new_head_x);
  int pos_y = static_cast<int>(new_head_y);
  CleverRound(new_head_x, new_head_y, pos_x, pos_y);
  int pos_now_x = static_cast<int>(new_head_x);
  int pos_now_y = static_cast<int>(new_head_y);
  if (Check(pos_y, pos_x) && new_head_x >= -1e-8 && new_head_y >= -1e-8 && new_head_x <= grid_width + 1e-8 && grid_height <= grid_height + 1e-8) {
    head_x = new_head_x < 1e-6 ? 0.0 : new_head_x;
    head_y = new_head_y < 1e-6 ? 0.0 : new_head_y;
  } else {
    //PrintDir(direction);
    UpdatePosDouble();
    direction = GetRandomDir();
    //PrintDir(direction);
  }
  CleverRound(head_x, head_y, pos_now_x, pos_now_y, true);
  if (CheckInter(pos_now_y, pos_now_x)) {
    direction = GetRandomDir();
  }  
}

void Animal::UpdateHead() {
  switch (direction) {
    case Direction::kUp:
      Animal::ObstacleUpdate(head_x, head_y - speed);
      break;

    case Direction::kDown:
      Animal::ObstacleUpdate(head_x, head_y + speed);
      break;

    case Direction::kLeft:
      Animal::ObstacleUpdate(head_x - speed, head_y);
      break;

    case Direction::kRight:
      Animal::ObstacleUpdate(head_x + speed, head_y);
      break;
    
    case Direction::kNone:
      direction = GetRandomDir();
      break;
  }
  if (direction != Direction::kNone) {
      prev_dir = direction;
  }
}
