extends CharacterBody2D


const SPEED = 1200
func getyDir() -> float:
	return Input.get_action_strength("down") - Input.get_action_strength("up")

func _physics_process(delta: float) -> void:
	var dir: Vector2 = Vector2(0, getyDir()) #retorna a entrada do teclado um valor positivo o negativo (0nada, +1baixar, -1subir)
	
	velocity = dir * SPEED
	
	move_and_slide()
	
