extends Camera

onready var portal: = get_node("../../../..")
onready var otherPortal: = get_node("../../../../../World2")
onready var player: = get_node("../../../../../Player/Head/Camera")
func _physics_process(delta):
	var playerOffset:Vector3 = player.translation + otherPortal.translation
	self.translation = portal.translation + playerOffset
	self.rotation_degrees = player.rotation_degrees
