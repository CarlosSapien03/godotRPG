extends CharacterBody2D

@export var speed = 200
var vidas = 5
var puntos = 0

func _physics_process(delta):
    var input_vector = Vector2(
        Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
        Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
    ).normalized()

    velocity = input_vector * speed
    move_and_slide()

func _on_Hitbox_body_entered(body):
    if body.is_in_group("Enemigos"):
        vidas -= 1
        if vidas <= 0:
            get_tree().change_scene("res://scenes/creditos.tscn")
