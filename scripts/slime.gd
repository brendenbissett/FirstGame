extends AnimatedSprite2D


const SPEED = 60

var direction = 1
@onready var raycast_right = $RaycastRight
@onready var raycast_left = $RaycastLeft
@onready var slime = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
		slime.flip_h = true;
	
	if raycast_left.is_colliding():
		direction = 1
		slime.flip_h = false;
		
	position.x += direction * SPEED * delta
