/// @description li'l gungy i am so proud of you

/****************
  Appearance
*****************/

// stops li'l gungy from spinning around a lot
phy_fixed_rotation = true

// default scale, changes when squashing and stretching
draw_xscale = 1
draw_yscale = 1

// i can see right through you
opacity = 0.9

/****************
  Action config
*****************/

// li'l gungy is considered stationary when their x speed is
// less than this
stationary_speed_limit = 0.25

// how far ahead li'l gungy will look for danger
scaredy_distance = 32

// how long it takes li'l gungy to think about something
jumpy_delay = 2 * room_speed

/****************
  State machine
*****************/

enum STATES {
	moving,
	thinking,
	jumping,
}

// by default, have li'l gungy move forwards
state = STATES.moving


// make this instance available to other things
global.gungy = id