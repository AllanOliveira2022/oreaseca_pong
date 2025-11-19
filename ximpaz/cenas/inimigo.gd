extends CharacterBody2D

var bola :CharacterBody2D

const SPEED = 300.0

func _ready() -> void:
	bola = get_parent().get_node("bola")

func _physics_process(delta: float) -> void:
	global_position.y = bola.global_position.y
	


	move_and_slide()
