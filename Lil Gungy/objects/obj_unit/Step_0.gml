/// @description Get knocked down by Gungy

if (place_meeting(x, y, obj_gungy) && score == 100) {
	instance_create_depth(x, y + 32, 0, obj_unit_fall)
	instance_destroy()
}