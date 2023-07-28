#include <iostream>

#include "bullet.h"

void Arrows::AddArrow(float x, float y, Direction d, float speed, int g_w, int g_h) {
    Arrow ar;
    ar.SetArrow(x, y, speed, d);
    _arrows.emplace_back(ar);
    _number_of_arrows += 1;
    grid_height = g_h;
    grid_width = g_w;
}

void Arrows::Update() {
    for (std::vector<Arrow>::iterator it = _arrows.begin(); it != _arrows.end();) {
        (*it).UpdateArrow();
        SDL_Point current_cell{
            static_cast<int>(it->x),
            static_cast<int>(it->y)
            };
        int pos_x = (*it).dir == Direction::kRight ? std::ceil(it->x) : std::floor(it->x);
        int pos_y = (*it).dir == Direction::kDown ? std::ceil(it->y) : std::floor(it->y);
        bool flag_inters = Check(pos_y, pos_x);
        if (!flag_inters || current_cell.x < 0 || current_cell.x > grid_width || current_cell.y < 0 || current_cell.y > grid_height) {
            _arrows.erase(it);
            _number_of_arrows--;
        } else {
            ++it;
        }
    }  
}