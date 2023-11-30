extends CharacterBody2D

var speed = 200

func _ready():
	velocity.x = 1*speed
	velocity.y = 1*speed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
func reset():
	position = Vector2(960,540)
