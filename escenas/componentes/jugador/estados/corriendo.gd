extends Estado

func enter():
	jugador.sprite.play("Corriendo")

func physics_update(delta):
	var direccion = Input.get_axis("mover_izquierda", "mover_derecha")

	if direccion == 0:
		jugador.velocity.x = 0
		get_parent().ir_a_siguiente_estado("Quieto")
	else:
		if direccion < 0:
			jugador.sprite.flip_h = true
		else:
			jugador.sprite.flip_h = false
		jugador.velocity.x = direccion * jugador.speed * delta
	jugador.move_and_slide()

	if Input.is_action_just_pressed("atacar"):
		get_parent().ir_a_siguiente_estado("Atacar")
