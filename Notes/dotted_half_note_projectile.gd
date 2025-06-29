extends CharacterBody2D

var projectile_speed = 800

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.x += projectile_speed * delta
