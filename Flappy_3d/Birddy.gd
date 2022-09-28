extends RigidBody


var rotate = 0.5
var max_rotate = 10
var flap_rotate = -15
var score = 0


onready var scoreLabel = $CanvasLayer/ScoreLabel
onready var bird = $"Bird-Floppy"

func _physics_process(delta):
	if Input.is_action_just_pressed("flap"):
		linear_velocity.y = 400 * delta
		bird.rotation_degrees.x = flap_rotate
		$wing.play()
		
	bird.rotation_degrees.x += rotate
	if bird.rotation_degrees.x > max_rotate:
		bird.rotation_degrees.x = max_rotate

	scoreLabel.text = str(score)

func _on_PlayerScoreArea_area_entered(area):
	if area.name == "ScoreArea":
		score += 1
		$score.play()
