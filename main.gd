extends Node
@export var notes = []
@export var current_note = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$NoteTimer.start()
	var quarter_note = load("res://Notes/quarter_note.tscn")
	var half_note = load("res://Notes/half_note.tscn")
	var dotted_half = load("res://Notes/dotted_half_note.tscn")
	var whole_note = load("res://Notes/whole_note.tscn")
	
	var instances = [
		quarter_note.instantiate(),
		half_note.instantiate(),
		dotted_half.instantiate(),
		whole_note.instantiate(),
		quarter_note.instantiate(),
		half_note.instantiate(),
		dotted_half.instantiate(),
		whole_note.instantiate(),
		quarter_note.instantiate(),
		half_note.instantiate(),
		dotted_half.instantiate(),
		whole_note.instantiate(),
		quarter_note.instantiate(),
		half_note.instantiate(),
		dotted_half.instantiate(),
		whole_note.instantiate(),
		quarter_note.instantiate(),
		half_note.instantiate(),
		dotted_half.instantiate(),
		whole_note.instantiate(),
	]
	
	for instance in instances:
		add_child(instance)
		notes.append(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("play_song"):
		if $GameplaySong.playing:
			$GameplaySong.stop()
		else:
			$GameplaySong.play()


func _on_note_timer_timeout() -> void:
	if current_note < notes.size() - 1:
		current_note += 1
	else:
		current_note = 0
	
	
	notes[current_note].toward_player = true
	notes[current_note].move_toward_player()
