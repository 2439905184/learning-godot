extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Icon.material.setup_local_to_scene()
	$Icon.material.blend_mode = CanvasItemMaterial.BLEND_MODE_ADD
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
