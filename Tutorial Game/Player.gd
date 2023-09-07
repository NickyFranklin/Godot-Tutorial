extends Node2D


var velocity = Vector2.ZERO
var speed = 400

# Called when the node enters the scene tree for the first time.

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

func _ready():
	connect("area_entered", self, "on_area_enter")


func _on_Area2D_area_entered(area):
	hide()
	
