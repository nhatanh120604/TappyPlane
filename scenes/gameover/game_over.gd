extends Control
@onready var _label: Label = $Label
@onready var _space: Label = $Space
@onready var timer: Timer = $Timer
@onready var game_over_sound = $Gameoversound
@onready var animation = $AnimationPlayer
func _ready():
	hide()
	SignalManager.on_player_died.connect(on_plane_died)

func on_plane_died():
	show()
	timer.start()
	game_over_sound.play()

func _on_timer_timeout():
	_label.hide()
	_space.show()
	animation.play("flashing")

func _process(delta):
	if _space.visible:
		if Input.is_action_just_pressed("fly"):
			GameManagement.load_main_scene()