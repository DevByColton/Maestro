extends Node2D

@export var quarter_note_w_projectile_scene: PackedScene

signal quarter_note_w_hit(projectile: PackedScene)

var player_is_in_area: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("w_hit_note") and player_is_in_area:
		# Spawn a projectile at the current location, hide note to give the illusion it is launching
		var projectile = quarter_note_w_projectile_scene.instantiate()
		projectile.position = self.position
		quarter_note_w_hit.emit(projectile)
		$NoteArea.hide()
		$QueueFreeTimer.start()


func _on_note_area_body_entered(body: Node2D) -> void:
	player_is_in_area = true


func _on_note_area_body_exited(body: Node2D) -> void:
	player_is_in_area = false


func _on_queue_free_timer_timeout() -> void:
	queue_free()
