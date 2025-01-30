extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Positions and variabels to start the game
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("play_song"):
		if $GameplaySong.playing:
			$GameplaySong.stop()
		else:
			$GameplaySong.play()
