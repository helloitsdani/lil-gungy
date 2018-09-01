/// @description Movement
var isOnGround = physics_test_overlap(x, y + 1, 0, obj_block)
var dangerAhead = place_meeting(x + scaredy_distance, y, obj_block)

switch (state) {
	case STATES.moving: {
		if (isOnGround && phy_speed_x <= stationary_speed_limit) {	
			physics_apply_local_impulse(0, 20, 15, 20)
		}
		
		if (dangerAhead) {
			state = STATES.thinking
		}
	}; break;
	case STATES.thinking: {
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