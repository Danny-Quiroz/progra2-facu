extends Estado

func enter():
	jugador.sprite.play("Saltando")
	
func physics_update(_delta):
	if Input.is_action_pressed("saltar"):
		jugador.velocity.y = -jugador.gravedad
		jugador.move_and_slide()
