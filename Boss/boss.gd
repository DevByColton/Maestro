extends Node2D

signal on_boss_hit(damage_amount)
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
	#position.x -= speed * delta


func _on_note_projectile_collider_body_entered(body: Node2D) -> void:
	match body.name:
		"QuarterNoteQProjectile":
			print("Quarter note Q hit")
			on_boss_hit.emit(1)
			# implement push back by amount, with velocity???
		"QuarterNoteWProjectile":
			print("Quarter note W hit")
			on_boss_hit.emit(1)
			# implement push back by amount, with velocity???
		"HalfNoteProjectile":
			print("half note hit")
			on_boss_hit.emit(2)
			# implement push back by amount, with velocity???
		"DottedHalfNoteProjectile":
			print("half note hit")
			on_boss_hit.emit(3)
			# implement push back by amount, with velocity???
		"WholeNoteProjectile":
			print("half note hit")
			on_boss_hit.emit(4)
			# implement push back by amount, with velocity???
	
	# Despawn the projectile
	body.queue_free()


func _on_player_collider_body_entered(body: Node2D) -> void:
	print("player entered")
