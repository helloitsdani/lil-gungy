///@description Set sprite based on state

var drawWidth = draw_xscale * sprite_width
var drawHeight = draw_yscale * sprite_height

// make sure gungy stays centre-aligned when squashing horizontally
var xDrawOffset = drawWidth != sprite_width
  ? -(drawWidth - sprite_width) / 2
  : 0
 
// make sure gungy is always drawn at the bottom of their tile;
// ie. if they squash vertically, it should look as though they
// squash downwards, but by default the draw would move them upwards
var yDrawOffset = drawHeight < sprite_height
  ? sprite_height - drawHeight
  : 0
 
var xDrawPos = x + xDrawOffset
var yDrawPos = y + yDrawOffset

if (state == STATES.jumping) {	
	if (phy_speed_y > 0) {
		draw_sprite_ext(spr_gungy_down, 0, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
	} else if (phy_speed_y < -0.9) {
		draw_sprite_ext(spr_gungy_up, 0, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
	} else {
		draw_sprite_ext(spr_gungy_tuff, 0, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
	}
} else if (state == STATES.thinking) {
	draw_sprite_ext(spr_gungy_tuff, 0, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
} else {
	draw_sprite_ext(spr_gungy_walk, 0, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
}