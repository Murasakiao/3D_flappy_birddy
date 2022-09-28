extends Spatial



func _ready():
	randomize()
	translate(Vector3(0,rand_range(-6,0),0))


func _physics_process(delta):
	translate(Vector3(-10,0,0) * delta)


func _body_entered(body):
	if body.name == "Birddy":
		get_tree().reload_current_scene()


func _on_Timer_timeout():
	queue_free()
