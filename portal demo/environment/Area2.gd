extends Area


func _on_Area_body_entered(body):
	
	var player: = get_node("../../../../Player")
	var camera: = get_node("../../Viewport/Cameras/TCAM2")

	var angle:float = Vector3.LEFT.angle_to(player.translation)

	if angle > 1.57 && body.is_in_group("player"):

		var body_pos:Vector3 = body.translation
		var camera_pos:Vector3 = camera.translation - Vector3(0, camera.translation.y - body.translation.y, 0)
		body.translation = camera_pos
