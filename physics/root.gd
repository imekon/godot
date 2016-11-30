extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var ballScene
var crateScene

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	ballScene = load("res://ball.tscn")
	crateScene = load("res://crate.tscn")
	set_process_input(true)

func _input(ev):
	if (ev.type == InputEvent.MOUSE_BUTTON and ev.pressed):
		if (ev.button_index == BUTTON_LEFT):
			# get the mouse position
			var mouse_pos = get_viewport().get_mouse_pos()
		
			# create a ball instance
			var ball = ballScene.instance()
		
			# set ball position
			ball.set_pos(Vector2(mouse_pos.x, mouse_pos.y))
			add_child(ball)
		
		if (ev.button_index == BUTTON_RIGHT):
			# get the mouse position
			var mouse_pos = get_viewport().get_mouse_pos()
		
			# create a crate instance
			var crate = crateScene.instance()
		
			# set ball position
			crate.set_pos(Vector2(mouse_pos.x, mouse_pos.y))
			add_child(crate)
			