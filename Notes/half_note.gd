extends RigidBody2D

@export var toward_player = false
@export var toward_boss = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.position.x = 1335
	self.position.y = 437# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if toward_player:
		move_toward_player()

func move_toward_player():
	self.position.x -= 3

func move_toward_boss():
	self.position.x += 1
