extends Sprite

var velocity = Vector2.ZERO
var speed = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT * speed
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT * speed
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN * speed
	position += velocity * delta


