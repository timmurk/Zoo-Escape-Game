#ifndef BULLET_H
#define BULLET_H

#include <vector>
#include <string>
#include <iostream>

#include "SDL.h"
#include "util.h"


struct Arrow {
    float speed;
    float x, y;
    Direction dir; 
    std::string OutDir() {
        switch (dir) {
            case Direction::kUp:
                return "Up\n";
            case Direction::kDown:
                return "Down\n";
            case Direction::kLeft:
                return "Left\n";
            case Direction::kRight:
                return "Right\n";
            case Direction::kNone:
                return "None\n";
        }    
    }

    void SetArrow(float xp, float yp, float speed, Direction d) {
        x = xp;
        y = yp;
        dir = d;
        speed = 0.2;
    }

    void UpdateArrow() {
        float speed_new = 0.2;
        switch (dir) {
            case Direction::kUp:
                y -= speed_new;
                break;

            case Direction::kDown:
                y += speed_new;
                break;

            case Direction::kLeft:
                x -= speed_new;
                break;

            case Direction::kRight:
                x += speed_new;
                break;

            case Direction::kNone: 
                break;
        }
    }
};

class Arrows {
    public:
        // constructor / destructor
        Arrows() : _number_of_arrows(0) {}

        void AddArrow(float x, float y, Direction d, float speed, int g_w, int g_h);
        void Update();

        std::vector<Arrow> getArrows() const { return _arrows; };
        int GetNumber() const { return _number_of_arrows; };

    private:
        std::vector<Arrow> _arrows;
        int _number_of_arrows;
        int grid_width;
        int grid_height;
};

#endif