extends Node2D



func _ready():
	$AnimatedSprite.play("shooting")

func _physics_process(_delta):
	var mouse = get_local_mouse_position()
	$AnimatedSprite.rotation = mouse.angle()
	$RayCast2D.rotation = mouse.angle() - 89.5
