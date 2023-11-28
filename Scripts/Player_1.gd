extends CharacterBody2D


@export var SPEED = 10.0


func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("Player_1_up", "Player_1_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y * delta, 0, SPEED)

	move_and_collide(velocity)
