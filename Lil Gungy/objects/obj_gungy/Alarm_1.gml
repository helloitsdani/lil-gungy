/// @description Bounce off a mushie!

draw_xscale = 0.75
draw_yscale = 1.5

physics_apply_local_impulse(0, 20, 40, 120)

inPositionForMushie = false
state = STATES.jumping