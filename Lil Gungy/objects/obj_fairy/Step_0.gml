/// @description Move fairy towards pointer

var targetX = obj_pointer.x + pointerDistanceX
var targetY = obj_pointer.y + pointerDistanceY

x = lerp(x, targetX, smoothing)
y = lerp(y, targetY, smoothing)