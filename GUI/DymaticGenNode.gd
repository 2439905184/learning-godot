extends Node

# csdn说明：https://blog.csdn.net/weixin_43539313/article/details/133070418
func _ready():
	var dy_btn = Button.new()
	add_child(dy_btn)
	dy_btn.name = "a"
	print(get_node("a"))
	pass
