extends Node2D

var vidas = 5
var puntos = 0

func _ready():
    get_tree().change_scene("res://scenes/menu.tscn")
