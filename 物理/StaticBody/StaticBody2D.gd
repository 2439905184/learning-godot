extends Node2D


func _on_reset_pressed():
	get_tree().reload_current_scene()
	pass


func _on_static_pressed():
	$ball.sleeping = false
	pass


func _on_chuan_song_dai_pressed():
	$ball.sleeping = false
	$StaticBody2D.constant_linear_velocity = Vector2(100,0)
	pass
