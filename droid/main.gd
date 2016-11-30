
extends Node2D

var unknownScene = preload("res://unknown.scn")
var playerScene = preload("res://player.scn")

func _ready():
	randomize()
	for y in range(0, 8):
		for x in range(0, 8):
			var n = unknownScene.instance()
			n.set_pos(Vector2(48 * x, 48 * y))
			add_child(n)

	var player = playerScene.instance()
	player.randomWarp()
	print("player instanced: ", player.getX(), ", ", player.getY(), ", ", player.getZ())
	player.set_pos(Vector2(player.getX() * 48, player.getY() * 48))
	add_child(player)

