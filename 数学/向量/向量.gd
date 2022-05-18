extends Node2D
var a
var b
var ball
var dir
func _ready():
	a = $Icon
	b= $Icon2
	ball = $Icon/KinematicBody2D
	dir = ball.global_position.direction_to(b.global_position)
	print(dir)
	
func _process(delta):

	$Icon/KinematicBody2D.move_and_collide(dir)
	
	pass
