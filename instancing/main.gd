
extends Node2D

var ballScene = preload("res://ball.scn")

func _ready():
	var ball = ballScene.instance()
	add_child(ball)

