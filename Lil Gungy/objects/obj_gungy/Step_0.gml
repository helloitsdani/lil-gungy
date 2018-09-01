/// @description Movement
var canJump = place_meeting(x, y + 1, obj_block)
var dangerAhead = place_meeting(x + scaredy_distance, y, obj_block)

if (!dangerAhead) {
	phy_speed_x = min(
		max_speed,
		phy_speed_x + acceleration
	)
} else {
	phy_speed_x = 0
	
	if (alarm_get(0) < 0) {
		alarm_set(0, jumpy_delay)
	}
}

