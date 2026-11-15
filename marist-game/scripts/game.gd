extends Node

@export var winner:PackedScene = preload("res://scenes/win.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_parking_spot_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("yay")
		get_tree().call_deferred(&"change_scene_to_packed", winner)
