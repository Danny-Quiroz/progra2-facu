extends Estado

func enter():
	jugador.sprite.play("Quieto")

func physics_update(_delta):
	if not jugador.is_on_floor():
		get_parent().ir_a_siguiente_estado("Cayendo")
	if jugador.is_on_floor():
		if Input.is_action_pressed("mover_derecha") or Input.is_action_pressed("mover_izquierda"):
			get_parent().ir_a_siguiente_estado("Corriendo")
	if Input.is_action_pressed("saltar"):
			get_parent().ir_a_siguiente_estado("Saltar")
