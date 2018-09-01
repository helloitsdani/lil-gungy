/// @description Insert description here
// You can write your code in this editor

if (state == STATES.jumping) {	
	if (phy_speed_y > 0) {
		draw_sprite(spr_gungy_down, 0, x, y)
	} else if (phy_speed_y < -0.9) {
		draw_sprite(spr_gungy_up, 0, x, y)
	} else {
		draw_sprite(spr_gungy_tuff, 0, x, y)
	}
} else if (state == STATES.thinking) {
	draw_sprite(spr_gungy_tuff, 0, x, y)
} else {
	draw_sprite(spr_gungy_walk, 0, x, y)
}