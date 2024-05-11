extends Area2D
@onready var score_sound = $Scoresound

func _on_body_entered(body: Node2D):
	ScoreManager.increase_score()
	score_sound.play()
