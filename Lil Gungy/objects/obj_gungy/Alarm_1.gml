/// @description Jump on a mushie!

physics_apply_local_impulse(0, 20, 20, 50)

draw_xscale = 0.75
draw_yscale = 1.5

state = STATES.jumping

alarm_set(2, 15)