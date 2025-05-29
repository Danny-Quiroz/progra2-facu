extends Estado

func enter():
	jugador.sprite.play("Quieto")

func physics_update(delta):
	jugador.velocity.y = jugador.gravedad
	jugador.move_and_slide()
	
	if jugador.is_on_floor() and Input.is_action_just_pressed("saltar"):
		get_parent().ir_a_siguiente_estado("Saltar")
	
	if not jugador.is_on_floor():
		get_parent().ir_a_siguiente_estado("Cayendo")
	
	if jugador.is_on_floor() and (Input.is_action_just_pressed("mover_izquierda") or Input.is_action_just_pressed("mover_derecha")):
		get_parent().ir_a_siguiente_estado("Corriendo")
	
	if Input.is_action_just_pressed("atacar"):
		get_parent().ir_a_siguiente_estado("Atacar")
	
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
