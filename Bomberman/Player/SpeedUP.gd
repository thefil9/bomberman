extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if (body.has_method("speedUP")):
			body.speedUP()
			queue_free()
			return