#ifndef CONTROLLER_H
#define CONTROLLER_H

#include "bullet.h"
#include "player.h"

class Controller {
 public:
  void HandleInput(bool &running, Player &player, Arrows& arrows) const;
 private:
  void ChangeDirection(Player &player, Direction input,
                       Direction opposite) const;
  void Shoot(Player &player, Arrows& arrows) const;
  void Walk(Player &player, Direction input) const;
};

#endif