extends Node2D

@onready var upper_marker = $uppermarker
@onready var lower_marker = $lowermarker
@onready var timer = $Timer
@export var pipe_scene: PackedScene

func _ready():
	SignalManager.on_player_died.connect(_on_player_died)
	spawn_pipe()
	timer.start()

func _on_timer_timeout():
	spawn_pipe()
	timer.start()

func spawn_pipe():
	var pipe = pipe_scene.instantiate()
	var y_pos = randf_range(upper_marker.position.y, lower_marker.position.y)
	pipe.position = Vector2(0, y_pos)
	add_child(pipe)

func _on_player_died():
	timer.stop()
