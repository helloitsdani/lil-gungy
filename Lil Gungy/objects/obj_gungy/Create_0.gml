/// @description gungy i am so proud of you

// let's go
acceleration = 1
max_speed = 3

scaredy_distance = 32
jumpy_delay = 3 * room_speed
stationary_speed_limit = 0.25

// no fall down
phy_fixed_rotation = true

// gungy states
enum STATES {
	moving,
	thinking,
	jumping,
}

state = STATES.moving

global.gungy = id