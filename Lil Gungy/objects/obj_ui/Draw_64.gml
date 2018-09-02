///@description draw GUNGE-UI

var height = display_get_gui_height()
var width = display_get_gui_width()

draw_sprite_ext(
	spr_ui_timer, 0,
	30,
	padding + sprite_get_height(spr_ui_timer),
	1, 1,
	uiJiggleAngle, c_white,
	1
)

draw_sprite_ext(
	spr_ui_gungy, happy == true,
	300, padding + sprite_get_height(spr_ui_timer),
	1, 1,
	uiJiggleAngle, c_white,
	1
)

draw_sprite_ext(
	spr_ui_badge, 0,
	500, padding + sprite_get_height(spr_ui_timer),
	1, 1,
	uiJiggleAngle, c_white,
	1
)

/* this is all placeholder but it's too good to remove? :( */

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