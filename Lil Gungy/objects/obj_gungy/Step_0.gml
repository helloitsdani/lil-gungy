/// @description Movement

var isMovingRight = keyboard_check(vk_right);
var isMovingLeft = keyboard_check(vk_left);
var isMovingUp = keyboard_check(vk_up);
var isMoving = isMovingLeft || isMovingRight;
var canJump = place_meeting(x, y + 1, obj_block)

if canJump && isMovingUp {
	if phy_speed_y > -10 {
		phy_speed_y -= 3;
	}
}

if isMovingRight {
	if phy_speed_x < 3 {
		phy_speed_x += 0.6;
	}
}

if isMovingLeft {
	if phy_speed_x > -3 {
		phy_speed_x -= 0.6;
	}
}


