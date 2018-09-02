///@description update camera position
// move slightly in front of li'l gungy so that
// they're always slightly to the back of the screen;
// this lets us see more of the upcoming level
x = global.gungy.x + 32 * 3
y = global.gungy.y

// parallax scrolling of backgrounds
var cameraXPos = camera_get_view_x(view_camera[0])
var cameraYPos = camera_get_view_y(view_camera[0])

layer_x("foreground_mountains", cameraXPos * 0.4)
layer_y("foreground_mountains", cameraYPos)
layer_x("foreground_clouds", cameraXPos * 0.4)
layer_y("foreground_clouds", cameraYPos)

layer_x("background_mountains", cameraXPos * 0.75)
layer_y("background_mountains", cameraYPos)

layer_x("background_gradient", cameraXPos)
layer_y("background_gradient", cameraYPos)