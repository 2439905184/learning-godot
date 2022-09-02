extends Node2D

func _ready():
	Engine.target_fps = 60
	
func _process(delta):
	print("逻辑帧循环")
	$Sprite.rotate(deg2rad(1))
	print(Engine.get_frames_drawn())
