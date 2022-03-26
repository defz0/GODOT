extends Label


func _ready():
	set_process(true)
	
func _process(_delta: float):
	var player:Vector3 = get_node("../Player").translation
	self.text = 'FPS: %s \nCords: %s' % [Engine.get_frames_per_second(), get_node("../Player/Head/Camera").translation]
	
