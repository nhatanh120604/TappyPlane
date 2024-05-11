extends Control
@onready var highscore_text = $MarginContainer/Highscore

func _ready():
	highscore_text.text = str(ScoreManager.get_high_score())

func _process(delta):
	if Input.is_action_just_pressed("fly"):
		GameManagement.load_game_scene()
