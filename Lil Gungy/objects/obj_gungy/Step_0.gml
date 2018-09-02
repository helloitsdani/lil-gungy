/// @description State transitions

var isOnGround = physics_test_overlap(x, y + 1, 0, obj_block)
var dangerAhead = place_meeting(x + scaredy_distance, y, obj_block)

draw_xscale = lerp(draw_xscale, image_xscale, 0.05)
draw_yscale = lerp(draw_yscale, image_yscale, 0.05)

switch (state) {
	case STATES.moving: {
		if (isOnGround && phy_speed_x <= stationary_speed_limit) {	
      draw_xscale = 0.9
      draw_yscale = 1.15
			physics_apply_local_impulse(0, 20, 13.5, 25)
		}
		
		if (dangerAhead) {
			state = STATES.thinking
		}
	}; break;
	case STATES.thinking: {
    draw_xscale = lerp(draw_xscale, 1.25, 0.15)
    draw_yscale = lerp(draw_yscale, 0.75, 0.15)
    
		if (dangerAhead) {
			if (alarm_get(0) < 0) {
				alarm_set(0, jumpy_delay)
			}
		} else {
			state = STATES.moving
		}
	}; break;
	case STATES.jumping: {
		if (phy_speed_y == 0) {
			state = STATES.thinking
		}
	}; break;
}