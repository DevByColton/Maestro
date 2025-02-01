extends Node

@export var quarter_note_w_scene: PackedScene
@export var quarter_note_q_scene: PackedScene
@export var half_note_scene: PackedScene
@export var dotted_half_note_scene: PackedScene
@export var whole_note_scene: PackedScene

var qnw

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var qnq = quarter_note_w_scene.instantiate()
	qnq.position = Vector2(400, 515)
	add_child(qnq)
	
	qnw = quarter_note_q_scene.instantiate()
	qnw.position = Vector2(400, 625)
	add_child(qnw)
	
	var hns = half_note_scene.instantiate()
	hns.position = Vector2(500, 390)
	add_child(hns)
	
	var dhns = dotted_half_note_scene.instantiate()
	dhns.position = Vector2(600, 265)
	add_child(dhns)
	
	var wns = whole_note_scene.instantiate()
	wns.position = Vector2(700, 160)
	add_child(wns)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#qnq.position.x -= 100 * delta
	
	#if qnq.position.x < 0:
		#qnq.position.x = 400
		
	
	if Input.is_action_just_pressed("play_song"):
		if $GameplaySong.playing:
			$GameplaySong.stop()
		else:
			$GameplaySong.play()
