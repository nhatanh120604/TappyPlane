extends Area2D

func _on_body_exited(body: Node2D):
	ScoreManager.increase_score()