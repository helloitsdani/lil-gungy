/// @description Insert description here
// You can write your code in this editor

if physics_test_overlap(x, y - 16, 0, obj_mushie) {
	physics_apply_local_impulse(0, 20, 200, 500)
}