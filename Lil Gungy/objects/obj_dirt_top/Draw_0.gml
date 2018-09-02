/// @description draws the tile, and grass above it

draw_sprite(
	spr_grass, randomSpriteNumber,
	x, y - 32
)

draw_sprite(
	spr_dirt_top, randomSpriteNumber,
	x, y
)

if place_meeting(x, y, obj_pointer) {
	draw_sprite(
		spr_selector, 0,
		x, y - 4
	)
}