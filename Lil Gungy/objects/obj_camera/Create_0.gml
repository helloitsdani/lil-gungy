view_camera[0] = camera_create_view(
	0, 0,
	320, 320,
	0, id,
	-1, -1,
	320 / 3, 320 / 3,
)

camera_set_view_speed(
	view_camera[0],
	1, -1
)