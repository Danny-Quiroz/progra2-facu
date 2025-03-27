extends Node
class_name Estado

var jugador : CharacterBody2D

func _ready():
	jugador = get_parent().jugador

func enter():
	pass

func physics_update(_delta):
	pass

func update(_delta):
	pass

func exit():
	pass
