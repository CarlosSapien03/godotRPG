extends CharacterBody2D

@export var speed = 100
@export var target : NodePath

func _physics_process(delta):
    if target:
        var jugador = get_node(target)
        var direction = (jugador.position - position).normalized()
        velocity = direction * speed
        move_and_slide()
