
// A soda is defined to be an integer which is a bitwise union of zero or more of these
// constants, with the exception that SPIN_LEFT and SPIN_RIGHT cannot simultaneously be set.

enum Soda {
  KICK = 1,
  HOP = 2,
  BOOM = 4,
  SPIN_LEFT = 8,
  RUSH = 16,
  SPIN_RIGHT = 32,
}
