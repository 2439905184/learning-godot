extends Node2D

onready var label = $Label

func _on_Enemy_tree_exiting():
	print("敌人要退出场景，但是还在活跃状态，是类似析构函数的地方")
	label.text = "敌人状态：死了"
	pass
	
func _on_Enemy_tree_exited():
	print("敌人退出场景树，且不再活跃")
	#label.text = "敌人状态：死了"
	pass
	
