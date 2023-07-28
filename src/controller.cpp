#include <iostream>
#include <thread>
#include <chrono>

#include "controller.h"
#include "SDL.h"
#include "player.h"

void Controller::Walk(Player &player, Direction input) const {
    player.direction = input;
    switch (input) {
      case Direction::kUp:
        player.ObstacleUpdate(player.head_x, player.head_y - player.speed);
        break;

      case Direction::kDown:
        player.ObstacleUpdate(player.head_x, player.head_y + player.speed);
        break;

      case Direction::kLeft:
        player.ObstacleUpdate(player.head_x - player.speed, player.head_y);
        break;

      case Direction::kRight:
        player.ObstacleUpdate(player.head_x + player.speed, player.head_y);
        break;
      
      case Direction::kNone:
        break;
      }
    return;
}

void Controller::Shoot(Player &player, Arrows &arrows) const {
    if (arrows.GetNumber() < 1) {
      arrows.AddArrow(player.head_x, player.head_y, player.prev_dir, player.speed, player.getW(), player.getH());
    }
    return;
}

void Controller::HandleInput(bool &running, Player &player, Arrows& arrows) const {
  SDL_Event e;
  while (SDL_PollEvent(&e)) {
    if (e.type == SDL_QUIT) {
      running = false;
      exit(0);
    } else if (e.type == SDL_KEYDOWN) {
      switch (e.key.keysym.sym) {
        case SDLK_UP:
          Walk(player, Direction::kUp);
          break;
        case SDLK_DOWN:
          Walk(player, Direction::kDown);
          break;
        case SDLK_LEFT:
          Walk(player, Direction::kLeft);
          break;
        case SDLK_RIGHT:
          Walk(player, Direction::kRight);
          break;
        case SDLK_SPACE:
          Shoot(player, arrows);
          break;
        default: 
          break;
      }
    }
  }
}