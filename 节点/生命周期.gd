extends Node2D

func _ready():
	connect("die",get_parent(),"_on_die")
	
func _on_Kill_pressed():
	queue_free()
	pass
