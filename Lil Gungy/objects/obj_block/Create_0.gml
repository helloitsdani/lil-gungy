/// @description set up physics/fixture
fixture_block = physics_fixture_create()

physics_fixture_set_box_shape(fixture_block, 16, 16)
physics_fixture_set_density(fixture_block, 0)
physics_fixture_set_collision_group(fixture_block, 1)

physics_fixture_bind_ext(
	fixture_block,
	id,
	-(sprite_height / 2),
	-(sprite_width / 2)
)

randomSpriteNumber = irandom(sprite_get_number(sprite_index))