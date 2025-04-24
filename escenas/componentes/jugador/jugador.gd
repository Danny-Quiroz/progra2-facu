extends CharacterBody2D

@export var speed : float = 10000
@export var impulso_salto = 1200
@export var friccion_salto = 100
@export var gravedad = 7500.0
@export var sprite : AnimatedSprite2D

@export var hud : Control

# variables
var vida : int
var max_vida : int = 500
var magia : int
var max_magia : int = 10
var monedas : int

func _ready():
	inicializar_jugador()
	actualizar_hud()

func _physics_process(_delta):
	pass

func inicializar_jugador():
	vida = max_vida
	magia = max_magia
	monedas = 0

func morir():
	queue_free()

func herir(cantidad : int):
	vida -= cantidad
	if vida <= 0:
		morir()

func actualizar_hud():
	hud.vida = vida
	hud.magia = magia
	hud.max_magia = max_magia
	hud.max_vida = max_vida
	hud.monedas = monedas
	hud.actualizar_valores()
