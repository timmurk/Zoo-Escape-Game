#include <iostream>

#include "game.h"
#include "SDL.h"

Game::Game(std::size_t grid_width, std::size_t grid_height)
    : player(grid_width, grid_height),
      engine(dev()),
      random_w(0, static_cast<int>(grid_width - 1)),
      random_h(0, static_cast<int>(grid_height - 1)) {
  PlaceAnimals(grid_width, grid_height);
}

void Game::Run(Controller const &controller, Renderer &renderer,
               std::size_t target_frame_duration) {
  Uint32 title_timestamp = SDL_GetTicks();
  Uint32 frame_start;
  Uint32 frame_end;
  Uint32 frame_duration;
  int frame_count = 0;
  bool running = true;

  std::cout << "Running the game \n";

  for (auto& animal : animals) {
      animal->threads.emplace_back(&Animal::Update, animal, std::ref(arrows));
  }
  auto chrono_time = std::chrono::system_clock::now();

  while (running) {
    frame_start = SDL_GetTicks();

    // Input, Update, Render - the main game loop.
    controller.HandleInput(running, player, arrows);
    Update();
    renderer.Render(player, food, arrows, animals);

    frame_end = SDL_GetTicks();

    // Keep track of how long each loop through the input/update/render cycle
    // takes.
    frame_count++;
    frame_duration = frame_end - frame_start;

    bool flag = true;
    int total = 0;
    for (auto& elem: animals) {
      flag = flag && elem->lock;
      total += (int)(flag);
    }

    score = total;

    if (flag) {
      renderer.UpdateWindowTitle(3, frame_count);
      return;
    }

    // After every second, update the window title.
    if (frame_end - title_timestamp >= 1000) {
      renderer.UpdateWindowTitle(total, frame_count);
      frame_count = 0;
      title_timestamp = frame_end;
    }
    if (total_animals == 0) {
      score = total;
      return;
    }

    // If the time for this frame is too small (i.e. frame_duration is
    // smaller than the target ms_per_frame), delay the loop to
    // achieve the correct frame rate.
    if (frame_duration < target_frame_duration) {
      SDL_Delay(target_frame_duration - frame_duration);
    }
    
  }
}

void Game::PlaceAnimals(std::size_t grid_width, std::size_t grid_height) {
  for (int i = 0; i < total_animals; ++i) {
    animals.push_back(std::make_shared<Animal>());
  }
}


void Game::Update() {
  player.Update();
  arrows.Update();
}

int Game::GetScore() const { return score; }