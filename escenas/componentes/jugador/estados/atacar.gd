extends Estado

@export var hitbox : Area2D

func enter():
	jugador.sprite.play("Atacar")
	for cuerpo in hitbox.get_overlapping_bodies():
		if cuerpo.is_in_group("Enemigos"):
			cuerpo.herir(10)

func physics_update(_delta):
	jugador.velocity.x = 0  
	jugador.move_and_slide()
	if not jugador.sprite.is_playing():
		get_parent().ir_a_siguiente_estado("Quieto")
