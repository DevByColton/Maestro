extends Node

@export var quarter_note_w_scene: PackedScene
@export var quarter_note_q_scene: PackedScene
@export var half_note_scene: PackedScene
@export var dotted_half_note_scene: PackedScene
@export var whole_note_scene: PackedScene

var wns

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var qnw = quarter_note_w_scene.instantiate()
	qnw.position = Vector2(100, 100)
	add_child(qnw)
	
	var qnq = quarter_note_q_scene.instantiate()
	qnq.position = Vector2(400, 560)
	add_child(qnq)
	
	var hns = half_note_scene.instantiate()
	hns.position = Vector2(500, 460)
	add_child(hns)
	
	var dhns = dotted_half_note_scene.instantiate()
	dhns.position = Vector2(600, 360)
	add_child(dhns)
	
	wns = whole_note_scene.instantiate()
	wns.position = Vector2(700, 260)
	add_child(wns)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#wns.position.x -= 100 * delta
	
	if Input.is_action_just_pressed("play_song"):
		if $GameplaySong.playing:
			$GameplaySong.stop()
		else:
			$GameplaySong.play()
