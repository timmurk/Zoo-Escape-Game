#ifndef UTIL_H
#define UTIL_H

#include <vector>
#include <iostream>

enum Direction { kUp, kDown, kLeft, kRight, kNone};

static int total_animals = 3;

static void PrintDir(Direction& dir) {
    switch (dir) {
        case Direction::kUp:
            std::cout << "up\n";
            break;
        case Direction::kDown:
            std::cout << "down\n";
            break;
        case Direction::kRight:
            std::cout << "right\n";
            break;
        case Direction::kLeft:
            std::cout << "left\n";
            break;
        case Direction::kNone:
            std::cout << "none\n";
            break;
    }
}

const std::vector <std::vector<int> > grid = {
    {0, 0, 2, 0, 2, 0, 0, 2, 0, 0, 0, 2, 0, 2, 0, 0},
    {0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
    {2, 0, 2, 0, 2, 1, 1, 1, 1, 1, 1, 2, 0, 2, 0, 2},
    {0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0},
    {0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
    {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},
    {0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0}
};

static bool CheckIntersection(int x, int y) {
    if (x < 0 || x > 15 || y < 0 || y > 15) {
        return false;
    }
    if (grid[x][y] == 2) {
        return true;
    }
    return false;
}

static bool Check(int x, int y, bool flag = true) {
    if (x < 0 || x > 15 || y < 0 || y > 15) {
        return false;
    }
    if ((grid[x][y] != 1 && flag) || (grid[x][y] == 0 && !flag)) {
        return true;
    }
    return false;
}

static bool CheckInter(int x, int y) {
    if (x < 0 || x > 15 || y < 0 || y > 15) {
        return false;
    }
    if (grid[x][y] == 2) {
        return true;
    }
    return false;
}

#endif