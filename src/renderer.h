#ifndef RENDERER_H
#define RENDERER_H

#include <vector>

#include "SDL.h"
#include "player.h"
#include "bullet.h"
#include "animal.h"

class Renderer {
 public:
  Renderer(const std::size_t screen_width, const std::size_t screen_height,
           const std::size_t grid_width, const std::size_t grid_height);
  ~Renderer();

  void Render(Player const player, SDL_Point const &food, Arrows & arrows, std::vector<std::shared_ptr<Animal>>& animals);
  void UpdateWindowTitle(int score, int fps);

 private:
  SDL_Window *sdl_window;
  SDL_Renderer *sdl_renderer;

  const std::size_t screen_width;
  const std::size_t screen_height;
  const std::size_t grid_width;
  const std::size_t grid_height;
};

#endif