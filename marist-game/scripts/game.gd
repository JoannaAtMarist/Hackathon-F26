extends Node

# winning scene
@export var winner:PackedScene = preload("res://scenes/win.tscn")

# time
@export var timer_seconds: float = 60.0
var time_left: float = 0.0
var timer_active: bool = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not timer_active:
		return
		
	time_left -= delta


func _on_parking_spot_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("yay")
		get_tree().call_deferred(&"change_scene_to_packed", winner)



func start_timer() -> void:
	time_left = timer_seconds
	timer_active = true
	print("Countdown at ", time_left, " seconds.")
