extends Node2D

var player_is_in_area: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("q_hit_note") and player_is_in_area:
		print("hit note q")


func _on_note_area_body_entered(body: Node2D) -> void:
	player_is_in_area = true


func _on_note_area_body_exited(body: Node2D) -> void:
	player_is_in_area = false
