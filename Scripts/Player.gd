extends CharacterBody2D
@export var speed = 10.0
@export var BindUp = "Player_1_up"
@export var BindDown = "Player_1_down"

func _physics_process(delta):
	moovePlayer(BindUp,BindDown,delta)
	
func moovePlayer(bindUp,bindDown,delta):
	var direction = Input.get_axis(bindUp, bindDown)
	if direction:
		velocity.y = direction * speed
	else:
		velocity.y = move_toward(velocity.y * delta, 0, speed)

	move_and_collide(velocity)
