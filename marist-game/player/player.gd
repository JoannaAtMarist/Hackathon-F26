#extends CharacterBody2D
#
#
#const SPEED = 300.0
#
#
#
#func get_input():
	#var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	#velocity = input_direction * SPEED
#
#
#
#
#func _physics_process(delta: float) -> void:
	## Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Get the input direction and handle the movement/deceleration.
	#get_input()
#
	#move_and_slide()



extends CharacterBody2D

const SPEED = 400.0

func _physics_process(_delta):
	var direction = Input.get_vector(
		'move_left', 'move_right', 'move_up', 'move_down').normalized()

	if direction.length():
		velocity = direction * SPEED
		look_at(position + direction)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
