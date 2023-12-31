#include <iostream>
#include <string>

#include "renderer.h"
#include "util.h"

Renderer::Renderer(const std::size_t screen_width,
                   const std::size_t screen_height,
                   const std::size_t grid_width, const std::size_t grid_height)
    : screen_width(screen_width),
      screen_height(screen_height),
      grid_width(grid_width),
      grid_height(grid_height) {
  // Initialize SDL
  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    std::cerr << "SDL could not initialize.\n";
    std::cerr << "SDL_Error: " << SDL_GetError() << "\n";
  }

  // Create Window
  sdl_window = SDL_CreateWindow("Zoo Escape Game", SDL_WINDOWPOS_CENTERED,
                                SDL_WINDOWPOS_CENTERED, screen_width,
                                screen_height, SDL_WINDOW_SHOWN);

  if (nullptr == sdl_window) {
    std::cerr << "Window could not be created.\n";
    std::cerr << " SDL_Error: " << SDL_GetError() << "\n";
  }

  // Create renderer
  sdl_renderer = SDL_CreateRenderer(sdl_window, -1, SDL_RENDERER_ACCELERATED);
  if (nullptr == sdl_renderer) {
    std::cerr << "Renderer could not be created.\n";
    std::cerr << "SDL_Error: " << SDL_GetError() << "\n";
  }
}

Renderer::~Renderer() {
  SDL_DestroyWindow(sdl_window);
  SDL_Quit();
}

void Renderer::Render(Player const player, SDL_Point const &food, Arrows& arrows, std::vector<std::shared_ptr<Animal> > & animals) {
  SDL_Rect block;
  block.w = screen_width / grid_width;
  block.h = screen_height / grid_height;

  // Clear screen
  SDL_SetRenderDrawColor(sdl_renderer, 0x1E, 0x1E, 0x1E, 0xFF);
  SDL_RenderClear(sdl_renderer);

  // Render obstacle
  SDL_SetRenderDrawColor(sdl_renderer, 255, 192, 203, 0xFF);
  for (int i = 0; i < 16; ++i) {
    for (int j = 0; j < 16; ++j) {
      if (grid[j][i] == 1) {
        block.x = i * block.w;
        block.y = j * block.h;
        SDL_RenderFillRect(sdl_renderer, &block);
      }
    }
  }

  // Render player's head
  block.x = static_cast<int>(player.head_x) * block.w;
  block.y = static_cast<int>(player.head_y) * block.h;

  if (player.alive) {
    SDL_SetRenderDrawColor(sdl_renderer, 0x00, 0x7A, 0xCC, 0xFF);
  } else {
    SDL_SetRenderDrawColor(sdl_renderer, 0xFF, 0x00, 0x00, 0xFF);
  }
  SDL_RenderFillRect(sdl_renderer, &block);

  // Render arrows
  SDL_SetRenderDrawColor(sdl_renderer, 0xFF, 0xFF, 0xFF, 0xFF);
  for (auto& arrow : arrows.getArrows()) {
    block.x = (arrow.x) * block.w;
    block.y = (arrow.y) * block.h;
    SDL_RenderDrawRect(sdl_renderer, &block);
  }

  SDL_SetRenderDrawColor(sdl_renderer, 255, 102, 0, 0xFF);
  for (auto& animal : animals) {
    if (!animal->lock) {
      block.x = (animal->GetX()) * block.w;
      block.y = (animal->GetY()) * block.h;
      SDL_RenderFillRect(sdl_renderer, &block);
    } 
  }

  // Update Screen
  SDL_RenderPresent(sdl_renderer);
}

void Renderer::UpdateWindowTitle(int score, int fps) {
  std::string title{"Player Score: " + std::to_string(score) + " FPS: " + std::to_string(fps)};
  SDL_SetWindowTitle(sdl_window, title.c_str());
}
