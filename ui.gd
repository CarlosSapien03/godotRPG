extends CanvasLayer

@export var jugador : NodePath

func _process(delta):
    var player = get_node(jugador)
    $VidasLabel.text = "Vidas: " + str(player.vidas)
    $PuntosLabel.text = "Puntos: " + str(player.puntos)
