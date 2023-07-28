#include <cmath>
#include <iostream>
#include <thread>

#include "player.h"

void Player::Update() {
    threads.emplace_back(std::thread(&Player::UpdateHead, this));
}

void Player::ObstacleUpdate(float new_head_x, float new_head_y) {
  int pos_x = static_cast<int>(new_head_x);
  int pos_y = static_cast<int>(new_head_y);
  if (Check(pos_y, pos_x) && new_head_y <= grid_height - 1 && new_head_x <= grid_width - 1) {
    head_x = fmin(fmax(new_head_x, 0), grid_width - 1);
    head_y = fmin(fmax(new_head_y, 0), grid_height - 1);
  } 
}

void Player::UpdateHead() {
  std::chrono::time_point<std::chrono::system_clock> lastUpdate;
  if (direction != Direction::kNone) {
      prev_dir = direction;
  }
  direction = Direction::kNone;
}