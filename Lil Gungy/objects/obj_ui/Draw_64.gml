///@description draw GUNGE-UI

var height = display_get_gui_height()
var width = display_get_gui_width()

draw_sprite_ext(
	spr_ui_gungy, happy == true,
	25, 45,
	1, 1,
	uiJiggleAngle, c_white,
	1
)

draw_sprite_ext(
	spr_ui_timer, 0,
	295, 45,
	1, 1,
	uiJiggleAngle, c_white,
	1
)

draw_sprite_ext(
	spr_ui_badge, 0,
	475, 50,
	1, 1,
	uiJiggleAngle, c_white,
	1
)

draw_sprite_ext(
	spr_ui_hud, 0,
	0, 0,
	0.5, 0.5,
	0, c_white,
	1
)

draw_set_color(c_black)
draw_set_font(font_gungy_title)

draw_text(
	45, 44,
	"x1"
)

with (global.controller) {
	draw_text(
		317, 44,
		timer
	)
}

/* this is all placeholder but it's too good to remove? :( */

draw_set_color(c_white)
draw_set_font(font_gungy)

draw_text(
  padding, height - padding - 16,
  "welcome to gungy world!!!!!"
 )

with (global.gungy) {
  var thoughts = "gungy"
  
  switch (state) {
    case STATES.jumping:
      thoughts = "i love to jump!"
      break;
    case STATES.thinking:
      thoughts = "hmmmmm....!!"
      break;
    case STATES.moving:
      thoughts = "let's go!"
      break;
  }
  
  draw_text(
    other.padding, height - other.padding - 32,
    thoughts
  )
}