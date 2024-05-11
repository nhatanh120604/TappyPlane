extends Node2D

@onready var on_screen = $VisibleOnScreenNotifier2D

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_player_died.connect(_on_player_died)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# pipe movement
	position.x -= GameManagement.SCROLL_SPEED * delta
	# check if pipe is off screen with the help of the VisibleOnScreenNotifier2D

func _on_screen_exited():
	queue_free()

func _on_player_died():
	set_process(false)