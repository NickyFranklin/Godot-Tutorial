extends Sprite

var speed = 100
var angle = PI
# Called when the node enters the scene tree for the first time.

func _process(delta):
	
	rotation += angle * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
