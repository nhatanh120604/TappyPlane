extends ParallaxBackground

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_player_died.connect(on_player_died)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_offset.x -= delta * GameManagement.SCROLL_SPEED

func on_player_died():
	set_process(false)
