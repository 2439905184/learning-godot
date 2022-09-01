extends Node2D

func _ready():
	# 使用ctrl + 鼠标点击filename快速查看文档描述
	var doc = Node.new()
	print(doc.filename)
	pass

# 此处使用的是Node节点类的一个属性来实现的，具体为Node.file_name
func _on_Area2D_area_entered(area):
	print(area.filename)
	if area.filename == "res://资源RID/敌人实例场景.tscn":
		print("是敌人，处理")
	elif area.filename == "res://资源RID/其他实例场景.tscn":
		print("不是敌人，不处理")
	#print(area.get_instance_id())
	#print(area.get_rid().get_id())
	pass
