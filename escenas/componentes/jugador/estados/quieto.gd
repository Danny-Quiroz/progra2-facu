extends Estado

func enter():
	jugador.sprite.play("Quieto")

func physics_update(_delta):
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
