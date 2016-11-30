extends Node2D

const ball_X = 0
const ball_Y = 300

var scene

func _ready():
	scene = load("res://ball.scn")
	set_process_input(true)
	
func _input(ev):
	if (ev.type == InputEvent.MOUSE_BUTTON and ev.pressed):
		# get the mouse position
		var mouse_pos = get_viewport().get_mouse_pos()
		
		# calculate the force vector on the ball
		var force = Vector2(mouse_pos.x - ball_X, mouse_pos.y - ball_Y)
		
		# create a ball instance
		var ball = scene.instance()
		
		# set ball position
		ball.set_pos(Vector2(ball_X, ball_Y))
		ball.set_linear_velocity(force)
		add_child(ball)
