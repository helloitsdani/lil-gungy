/// @description Insert description here
// You can write your code in this editor
var height = display_get_gui_height()
var width = display_get_gui_width()

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