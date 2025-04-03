extends Control

# variables
var vida = 100
var max_vida = 300
var magia = 20
var max_magia = 100
var monedas = 120

# vida
@onready var barra_vida = $MarginContainer/BarraContainer/VidaContainer/ProgressBar
@onready var texto_vida = $MarginContainer/BarraContainer/VidaContainer/Label

# magia
@onready var barra_magia = $MarginContainer/BarraContainer/MagicContainer/ProgressBar
@onready var texto_magia = $MarginContainer/BarraContainer/MagicContainer/Label

# monedas
@onready var texto_monedas = $MarginContainer/MonedasContainer/Label

func _ready():
	barra_vida.max_value = max_vida
	barra_magia.max_value = max_magia

func _process(delta):
	barra_vida.value = vida
	texto_vida.text = str(magia)
	barra_magia.value = vida
	texto_magia.text = str(magia)
