///@description Set sprite based on state

var IDLE_FRAME = 0
var WALK_FRAME = 1
var UP_FRAME = 2
var DOWN_FRAME = 3
var TUFF_FRAME = 4
var OOF_FRAME = 5

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
	if (phy_speed_y > 0.9) {
		draw_sprite_ext(spr_gungy, DOWN_FRAME, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
	} else if (phy_speed_y < -0.9) {
		draw_sprite_ext(spr_gungy, UP_FRAME, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
	} else {
		draw_sprite_ext(spr_gungy, TUFF_FRAME, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
	}
} else if (state == STATES.thinking) {
	draw_sprite_ext(spr_gungy, TUFF_FRAME, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
} else {
	draw_sprite_ext(spr_gungy, WALK_FRAME, xDrawPos, yDrawPos, draw_xscale, draw_yscale, 0, c_white, opacity)
}