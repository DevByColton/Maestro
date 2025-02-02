extends Node2D

signal on_boss_hit(damage_amount)
signal on_boss_hit_player

var sprite_half_width: float = 94 # Can probably get width and height from sprite node item
var sprite_half_height: float = 330

@onready var screen_size := get_viewport_rect().size
@onready var screen_min_bounds := Vector2(sprite_half_width, sprite_half_height)
@onready var screen_max_bounds := Vector2(screen_size.x - sprite_half_width, screen_size.y - sprite_half_height)

@export var can_boss_move_horizontal: bool = false

var time: float = 0.0
var frequency: float = 0.5
var amplitude: float = 0.3
var speed: float = 50.0
var lerp_speed: float = 5.0
var boss_pushback_multiplier: float = 50
var next_boss_position: Vector2 = Vector2(1177, 365) # Starting position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	# Iterate time, once it completes a full rotation reset it
	var newTime = time + delta;
	if newTime > TAU:
		time = 0.0
	else:
		time = newTime
	
	# Lerp the boss to the next position
	# This is my way of implementing fake push back when the notes are doing damage
	# There is probably a better way of doing it with velocity or a character body
	if can_boss_move_horizontal:
		next_boss_position.x -= speed * delta;
	
	next_boss_position.y += amplitude * sin(time / frequency);
	next_boss_position.clamp(screen_min_bounds, screen_max_bounds)
	position = position.lerp(next_boss_position, delta * lerp_speed).clamp(screen_min_bounds, screen_max_bounds)


func do_boss_damage(damage_amount: int) -> void:
	next_boss_position.x += damage_amount * boss_pushback_multiplier
	on_boss_hit.emit(damage_amount)


func _on_note_projectile_collider_body_entered(body: Node2D) -> void:
	match body.name:
		"QuarterNoteQProjectile":
			do_boss_damage(1)
		
		"QuarterNoteWProjectile":
			do_boss_damage(1)
		
		"HalfNoteProjectile":
			do_boss_damage(2)
		
		"DottedHalfNoteProjectile":
			do_boss_damage(3)
		
		"WholeNoteProjectile":
			do_boss_damage(4)
	
	# Despawn the projectile
	body.queue_free()


func _on_player_collider_body_entered(body: Node2D) -> void:
	on_boss_hit_player.emit()
