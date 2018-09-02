/// @description Get knocked down by Gungy

if place_meeting(x, y, obj_gungy) {
	score += 15
	instance_create_depth(x, y + 32, 0, obj_cutout_fall)
	instance_destroy()
}