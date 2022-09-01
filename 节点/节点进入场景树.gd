extends Node2D
# 具体请查看Node类的文档
func _enter_tree():
	print(self,"进入场景树")
	for node in get_children():
		node.connect("tree_entered",self,"_child_entered",[node])
		node.connect("ready",self,"_child_ready",[node])
		
func _ready():
	print(self,"准备好了")
	
func _child_entered(node:Node):
	print(node,"进入场景树")
	
func _child_ready(node:Node):
	print(node,"准备好了")
