extends Control

@onready var _score_text = $MarginContainer/Label

func _ready():
	SignalManager.on_score_updated.connect(on_score_updated)

func on_score_updated() -> void:
	_score_text.text = "Score: " + str(ScoreManager.get_score())