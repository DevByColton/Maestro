extends Area2D

var time: float = 0.0
var frequency: float = 0.5
var amplitude: float = 0.3


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Iterate time, once it completes a full rotation reset it
	var newTime = time + delta;
	if newTime > TAU:
		time = 0.0
	else:
		time = newTime
	
	position.y += amplitude * sin(time / frequency)
