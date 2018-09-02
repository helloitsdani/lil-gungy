/// @description State transitions

if physics_test_overlap(x + 1, y, 0, obj_unit) {
	if (score != 100) {
		return
	}
}

var dangerAhead = place_meeting(x + scaredy_distance, y, obj_block)
var mushieAhead = place_meeting(x + 16, y + 4, obj_mushie)

draw_xscale = lerp(draw_xscale, image_xscale, 0.05)
draw_yscale = lerp(draw_yscale, image_yscale, 0.05)

switch (state) {
	case STATES.moving: {
    var isOnGround = physics_test_overlap(x, y + 1, 0, obj_block)
    var justLanded = physics_test_overlap(x, yprevious + 1, 0, obj_block)
    
    if (mushieAhead) {
		if (!inPositionForMushie) {
			mushie = instance_nearest(x + 16, y + 8, obj_mushie)
			if (mushie.x - x) > 16 {
				phy_speed_x = 1
			} else if (mushie.x - x) < 15 {
				phy_speed_x = -1
			} else {
				phy_speed_x = 0
				inPositionForMushie = true
			}
		} else {
			state = STATES.thinking
		}
	return
	}
	
	if (dangerAhead) {
		state = STATES.thinking
		return
	}

    if (justLanded) {
      draw_xscale = lerp(draw_xscale, 1.05, 0.15)
      draw_yscale = lerp(draw_yscale, 0.95, 0.15)
    }
    
		if (isOnGround && phy_speed_x <= stationary_speed_limit && !mushieAhead) {	
      draw_xscale = 0.9
      draw_yscale = 1.15
			physics_apply_local_impulse(0, 20, 13.5, 25)
		}
	}; break;
	case STATES.thinking: {    
		if (!dangerAhead && !mushieAhead) {
      state = STATES.moving
      return
    }
	
    draw_xscale = lerp(draw_xscale, 1.2, 0.05)
    draw_yscale = lerp(draw_yscale, 0.8, 0.05)
    
	if (mushieAhead) {
		if (alarm_get(1) < 0) {
			alarm_set(1, jumpy_delay)
			return
		}
	}
    
	if (dangerAhead && !mushieAhead) {
	  if (alarm_get(0) < 0) {
			alarm_set(0, jumpy_delay)
		}
	}
	}; break;
	case STATES.jumping: {
		if (phy_speed_y == 0) {
			if (mushieAhead) {
				state = STATES.moving
			} else {
				state = STATES.thinking
			}
		}
	}; break;
}
