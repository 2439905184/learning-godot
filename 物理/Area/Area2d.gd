extends Node2D


func _on_zuni_pressed():
	$ball.sleeping = false
	$Area2D.space_override = Area2D.SPACE_OVERRIDE_REPLACE
	$Area2D.linear_damp = 8
	pass 
	
func _on_rotate_zuni_pressed():
	$ball.sleeping = false
	$ball.angular_velocity = 20
	$Area2D.space_override = Area2D.SPACE_OVERRIDE_REPLACE
	$Area2D.angular_damp = 10


func _on_reset_pressed():
	get_tree().reload_current_scene()
	pass


func _on_garvity_add_pressed():
	$ball.sleeping = false
	$Area2D.space_override = Area2D.SPACE_OVERRIDE_REPLACE
	$Area2D.gravity = 2000
	pass


func _on_area_dete_pressed():
	$ball.sleeping = false
	pass


func _on_Area2D_body_entered(body):
	if body == $ball:
		body.get_node("Sprite").modulate = Color(255,0,0)
	pass


func _on_Area2D_body_exited(body):
	if body == $ball:
		body.get_node("Sprite").modulate = Color(255,255,255,255)
	pass # Replace with function body.
