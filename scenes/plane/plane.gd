extends CharacterBody2D

const GRAVITY = 1500
const JUMP = 500
@onready var animated_sprite_2d = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	fly(delta)
	move_and_slide()
	if is_on_floor():
		die()

func fly(delta: float) -> void:
	#gravity
	velocity.y += GRAVITY * delta
	if Input.is_action_just_pressed("fly"):
		velocity.y = -JUMP

func die():
	animated_sprite_2d.stop()
	set_physics_process(false)