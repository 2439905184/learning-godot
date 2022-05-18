extends Spatial
var player
var zidan
var dir
var speed = 5
func _process(delta):
	zidan.global_translate(dir*delta*speed)
	pass
func _ready():
	zidan = $shot_point/zidan
	player = $player
	dir = zidan.global_transform.origin.direction_to(player.global_transform.origin)
	pass
	
#func use_xform(node:Spatial):
#	return node.global_transform.xform(node.translation)
#	pass

