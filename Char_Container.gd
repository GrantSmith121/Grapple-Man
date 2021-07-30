extends Node2D

onready var Character = load("res://Player/Char.tscn")
var starting_position = Vector2(100,100)


func _ready():
	pass


func _physics_process(_delta):
	if not has_node("Char"):
		var character = Character.instance()
		character.position = starting_position
		add_child(character)
