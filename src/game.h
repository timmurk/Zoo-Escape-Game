#ifndef GAME_H
#define GAME_H

#include <random>

#include "SDL.h"
#include "controller.h"
#include "renderer.h"
#include "player.h"
#include "animal.h"

class Game {
 public:
  Game(std::size_t grid_width, std::size_t grid_height);
  void Run(Controller const &controller, Renderer &renderer,
           std::size_t target_frame_duration);
  int GetScore() const;

 private:
  Player player;
  std::vector<std::shared_ptr<Animal>> animals;
  SDL_Point food;
  Arrows arrows;

  std::random_device dev;
  std::mt19937 engine;
  std::uniform_int_distribution<int> random_w;
  std::uniform_int_distribution<int> random_h;

  std::mutex _mtx;

  int score{0};

  void PlaceFood();
  void PlaceAnimals(std::size_t grid_width, std::size_t grid_height);
  void Update();
};

#endif