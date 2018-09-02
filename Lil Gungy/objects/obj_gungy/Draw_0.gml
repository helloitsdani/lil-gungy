///@description Set sprite based on state

if (state == STATES.jumping) {	
	if (phy_speed_y > 0) {
		draw_sprite_ext(spr_gungy_down, 0, x, y, draw_xscale, draw_yscale, 0, c_white, 0.8)
	} else if (phy_speed_y < -0.9) {
		draw_sprite_ext(spr_gungy_up, 0, x, y, draw_xscale, draw_yscale, 0, c_white, 0.8)
	} else {
		draw_sprite_ext(spr_gungy_tuff, 0, x, y, draw_xscale, draw_yscale, 0, c_white, 0.8)
	}
} else if (state == STATES.thinking) {
	draw_sprite_ext(spr_gungy_tuff, 0, x, y, draw_xscale, draw_yscale, 0, c_white, 0.8)
} else {
	draw_sprite_ext(spr_gungy_walk, 0, x, y, draw_xscale, draw_yscale, 0, c_white, 0.8)
}