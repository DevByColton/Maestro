extends CharacterBody2D

var time: float = 0.0
var frequency: float = 0.5
var amplitude: float = 0.3
var speed: float = 20.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	# Iterate time, once it completes a full rotation reset it
	var newTime = time + delta;
	if newTime > TAU:
		time = 0.0
	else:
		time = newTime
	
	position.y += amplitude * sin(time / frequency)
	position.x -= speed * delta
