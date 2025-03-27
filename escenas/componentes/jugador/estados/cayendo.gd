extends Estado

func enter():
	jugador.sprite.play("Cayendo")

func physics_update(_delta):
	print(jugador.sprite)
	jugador.velocity.y = jugador.gravedad
	jugador.move_and_slide()
	
	if jugador.is_on_floor():
		get_parent().ir_a_siguiente_estado("Quieto")
