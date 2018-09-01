/// @description Insert description here
// You can write your code in this editor
draw_text(10, 10, "welcome to gungy world!!!!!")

with (global.gungy) {
	draw_text(100, 100, alarm_get(0))
	
	if (state == STATES.jumping) {
		draw_text(10, 40, "i love to jump!")
	} else if (state == STATES.thinking) {
		draw_text(10, 40, "hmmmm.....!!")
	} else if (state == STATES.moving) {
		draw_text(10, 40, "let's go!")
	} else {
		draw_text(10, 40, "idk")
	}
}