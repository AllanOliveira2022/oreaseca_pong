extends CharacterBody2D


const SPEED = 20.0

func _ready() -> void:
	velocity = Vector2(-SPEED, 0)

func _physics_process(delta: float) -> void:
	var col :KinematicCollision2D = move_and_collide(velocity) #detecta a colisão
	
	if col:
		var normal = col.get_normal()
		
		velocity = velocity.bounce(normal)
	
	
