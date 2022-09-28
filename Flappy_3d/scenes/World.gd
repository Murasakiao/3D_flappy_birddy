extends Spatial




func _on_Timer_timeout():
	$Timer.wait_time = 1.4
	$Timer.start()
	var pipe = preload("res://scenes/Pipes.tscn").instance()
	pipe.translation.x = 5
	add_child(pipe)
