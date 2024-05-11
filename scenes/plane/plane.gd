extends CharacterBody2D

const GRAVITY = 1500
const JUMP = 500
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer
@onready var engine_sound = $Engine
func _physics_process(delta):
	fly(delta)
	move_and_slide()
	if is_on_floor():
		die()

func fly(delta: float) -> void:
	#gravity
	velocity.y += GRAVITY * delta
	if Input.is_action_just_pressed("fly"):
		animation_player.play("jump")
		velocity.y = -JUMP

func die():
	set_physics_process(false)
	engine_sound.stop()
	SignalManager.emit_signal("on_player_died")
	animated_sprite_2d.stop()
