#include <algorithm>
#include <iostream>
#include <chrono>
#include "objects.h"

// init static variable
int Creature::_idCnt = 0;
std::mutex Creature::_mtx;


void Creature::setPosition(double x, double y) {
    head_x = x;
    head_y = y;
}

void Creature::getPosition(double &x, double &y) {
    x = head_x;
    y = head_y;
}

Creature::~Creature() {
    // set up thread barrier before this Creature is destroyed
    std::for_each(threads.begin(), threads.end(), [](std::thread &t) {
        t.join();
    });
}
