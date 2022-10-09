tool
extends Node2D
# 感谢godot星球群 群主草包提供的代码 
# 小沙盒工作室在此代码只是做了一点小修改 方便大家在编辑器里查看效果和学习
export (bool) var reset = false setget shoot_siwtch

onready var godot = get_node("godot")
#export var enable_shoot = false
# 斜上45度的向量表示
var dir = Vector2(1,-1)
# 速度
export var speed = 200
# 每一帧要移动的速度向量
var vel = dir * speed # 初始速度向量
var g = 2.0  # 重力


func _ready():
	godot.position = get_node("Position2D").position
	set_physics_process(false)
	pass
	
func shoot_siwtch(value):
	reset = value
	if value:
		godot.position = Vector2(72,512)
		vel = dir * speed
		set_physics_process(true)
	else:
		set_physics_process(false)
	print_debug(value)
	
func _physics_process(delta):
	godot.move_and_slide(vel,Vector2.UP)
	# 每一帧变大(y向下方向的),用于模拟物理的重力加速度
	vel.y += pow(g,2)
	pass
