extends Node

@export var quarter_note_q_scene: PackedScene
@export var quarter_note_w_scene: PackedScene
@export var half_note_scene: PackedScene
@export var dotted_half_note_scene: PackedScene
@export var whole_note_scene: PackedScene
@export var note_spawns: Array[NoteSpawn] = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Create the note array
	note_spawns.append(NoteSpawn.new(1, NoteSpawn.NoteType.QuarterNoteQ, 0.1))
	note_spawns.append(NoteSpawn.new(2, NoteSpawn.NoteType.QuarterNoteW, 1.5))
	note_spawns.append(NoteSpawn.new(3, NoteSpawn.NoteType.QuarterNoteQ, 2.5))
	note_spawns.append(NoteSpawn.new(4, NoteSpawn.NoteType.HalfNote, 4.5))
	note_spawns.append(NoteSpawn.new(5, NoteSpawn.NoteType.DottedHalfNote, 5))
	note_spawns.append(NoteSpawn.new(6, NoteSpawn.NoteType.WholeNote, 5.8))
	note_spawns.append(NoteSpawn.new(7, NoteSpawn.NoteType.QuarterNoteQ, 3.9))
	note_spawns.append(NoteSpawn.new(8, NoteSpawn.NoteType.QuarterNoteW, 4.1))
	note_spawns.append(NoteSpawn.new(9, NoteSpawn.NoteType.QuarterNoteQ, 5.5))
	note_spawns.append(NoteSpawn.new(10, NoteSpawn.NoteType.QuarterNoteW, 6.0))
	note_spawns.append(NoteSpawn.new(11, NoteSpawn.NoteType.QuarterNoteQ, 6.9))
	note_spawns.append(NoteSpawn.new(12, NoteSpawn.NoteType.HalfNote, 7.2))
	note_spawns.append(NoteSpawn.new(13, NoteSpawn.NoteType.DottedHalfNote, 8.0))
	note_spawns.append(NoteSpawn.new(14, NoteSpawn.NoteType.WholeNote, 9.0))
	note_spawns.append(NoteSpawn.new(15, NoteSpawn.NoteType.QuarterNoteQ, 10.2))
	note_spawns.append(NoteSpawn.new(16, NoteSpawn.NoteType.QuarterNoteW, 10.8))
	note_spawns.append(NoteSpawn.new(17, NoteSpawn.NoteType.QuarterNoteQ, 11.4))
	note_spawns.append(NoteSpawn.new(18, NoteSpawn.NoteType.QuarterNoteW, 11.9))
	note_spawns.append(NoteSpawn.new(19, NoteSpawn.NoteType.QuarterNoteQ, 12.5))
	note_spawns.append(NoteSpawn.new(20, NoteSpawn.NoteType.HalfNote, 13.7))
	note_spawns.append(NoteSpawn.new(21, NoteSpawn.NoteType.DottedHalfNote, 14.9))
	note_spawns.append(NoteSpawn.new(22, NoteSpawn.NoteType.WholeNote, 15))
	note_spawns.append(NoteSpawn.new(23, NoteSpawn.NoteType.QuarterNoteQ, 15.67))
	note_spawns.append(NoteSpawn.new(24, NoteSpawn.NoteType.QuarterNoteW, 16.9))
	note_spawns.append(NoteSpawn.new(25, NoteSpawn.NoteType.QuarterNoteQ, 18.0))
	note_spawns.append(NoteSpawn.new(26, NoteSpawn.NoteType.QuarterNoteW, 18.9))
	note_spawns.append(NoteSpawn.new(27, NoteSpawn.NoteType.QuarterNoteQ, 19.9))
	note_spawns.append(NoteSpawn.new(28, NoteSpawn.NoteType.HalfNote, 20.9))
	note_spawns.append(NoteSpawn.new(29, NoteSpawn.NoteType.DottedHalfNote, 22.0))
	note_spawns.append(NoteSpawn.new(30, NoteSpawn.NoteType.WholeNote, 23.6))
	note_spawns.append(NoteSpawn.new(31, NoteSpawn.NoteType.QuarterNoteQ, 24.9))
	note_spawns.append(NoteSpawn.new(32, NoteSpawn.NoteType.QuarterNoteW, 25.8))
	note_spawns.append(NoteSpawn.new(33, NoteSpawn.NoteType.QuarterNoteQ, 26.9))
	note_spawns.append(NoteSpawn.new(34, NoteSpawn.NoteType.QuarterNoteW, 27.4))
	note_spawns.append(NoteSpawn.new(35, NoteSpawn.NoteType.QuarterNoteQ, 28.1))
	note_spawns.append(NoteSpawn.new(36, NoteSpawn.NoteType.HalfNote, 29.8))
	note_spawns.append(NoteSpawn.new(37, NoteSpawn.NoteType.DottedHalfNote, 30.8))
	note_spawns.append(NoteSpawn.new(38, NoteSpawn.NoteType.WholeNote, 32.1))
	note_spawns.append(NoteSpawn.new(39, NoteSpawn.NoteType.QuarterNoteQ, 33.8))
	note_spawns.append(NoteSpawn.new(40, NoteSpawn.NoteType.QuarterNoteW, 34.8))
	note_spawns.append(NoteSpawn.new(41, NoteSpawn.NoteType.QuarterNoteQ, 35.9))
	note_spawns.append(NoteSpawn.new(42, NoteSpawn.NoteType.QuarterNoteW, 37.2))
	note_spawns.append(NoteSpawn.new(43, NoteSpawn.NoteType.QuarterNoteQ, 38.9))
	note_spawns.append(NoteSpawn.new(44, NoteSpawn.NoteType.HalfNote, 40.0))
	note_spawns.append(NoteSpawn.new(45, NoteSpawn.NoteType.DottedHalfNote, 41.2))
	note_spawns.append(NoteSpawn.new(46, NoteSpawn.NoteType.WholeNote, 42.8))
	note_spawns.append(NoteSpawn.new(47, NoteSpawn.NoteType.QuarterNoteQ, 43.6))
	note_spawns.append(NoteSpawn.new(48, NoteSpawn.NoteType.QuarterNoteW, 44.8))
	note_spawns.append(NoteSpawn.new(49, NoteSpawn.NoteType.QuarterNoteQ, 45.8))
	note_spawns.append(NoteSpawn.new(50, NoteSpawn.NoteType.QuarterNoteW, 46.8))
	note_spawns.append(NoteSpawn.new(51, NoteSpawn.NoteType.QuarterNoteQ, 47.1))
	note_spawns.append(NoteSpawn.new(52, NoteSpawn.NoteType.HalfNote, 48.8))
	note_spawns.append(NoteSpawn.new(53, NoteSpawn.NoteType.DottedHalfNote, 50))
	note_spawns.append(NoteSpawn.new(54, NoteSpawn.NoteType.WholeNote, 51.2))
	note_spawns.append(NoteSpawn.new(55, NoteSpawn.NoteType.QuarterNoteQ, 52.3))
	note_spawns.append(NoteSpawn.new(56, NoteSpawn.NoteType.QuarterNoteW, 54.0))
	note_spawns.append(NoteSpawn.new(57, NoteSpawn.NoteType.QuarterNoteQ, 55))
	note_spawns.append(NoteSpawn.new(58, NoteSpawn.NoteType.QuarterNoteW, 56.82))
	note_spawns.append(NoteSpawn.new(59, NoteSpawn.NoteType.QuarterNoteQ, 57.9))
	note_spawns.append(NoteSpawn.new(60, NoteSpawn.NoteType.HalfNote, 58.8))
	note_spawns.append(NoteSpawn.new(61, NoteSpawn.NoteType.DottedHalfNote, 59.6))
	note_spawns.append(NoteSpawn.new(62, NoteSpawn.NoteType.WholeNote, 60.2))
	note_spawns.append(NoteSpawn.new(63, NoteSpawn.NoteType.QuarterNoteQ, 61.5))
	note_spawns.append(NoteSpawn.new(64, NoteSpawn.NoteType.QuarterNoteW, 62.0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func stop_or_play_song() -> void:
	if $GameplaySong.playing:
		$GameplaySong.stop()
	else:
		$GameplaySong.play()


func start_spawn_note_timers() -> void:
	# Create note timers that will spawn the notes on timeout
	# Each timer connects to the timeout signal and passes itself in order to queue_free
	for note_spawn in note_spawns:
		print("spawning note: ", note_spawn.id)
		match note_spawn.note_type:
			NoteSpawn.NoteType.QuarterNoteQ:
				var qnq_timer = Timer.new()
				add_child(qnq_timer)
				qnq_timer.name = "qnq_timer" + str(note_spawn.id)
				qnq_timer.one_shot = true
				qnq_timer.start(note_spawn.seconds_until_spawn)
				qnq_timer.timeout.connect(on_quarter_note_q_timeout.bind(qnq_timer))
			
			NoteSpawn.NoteType.QuarterNoteW:
				var qnw_timer = Timer.new()
				add_child(qnw_timer)
				qnw_timer.name = "qnw_timer" + str(note_spawn.id)
				qnw_timer.one_shot = true
				qnw_timer.start(note_spawn.seconds_until_spawn)
				qnw_timer.timeout.connect(on_quarter_note_w_timeout.bind(qnw_timer))
			
			NoteSpawn.NoteType.HalfNote:
				var hn_timer = Timer.new()
				add_child(hn_timer)
				hn_timer.name = "hn_timer" + str(note_spawn.id)
				hn_timer.one_shot = true
				hn_timer.start(note_spawn.seconds_until_spawn)
				hn_timer.timeout.connect(on_half_note_timeout.bind(hn_timer))
			
			NoteSpawn.NoteType.DottedHalfNote:
				var dhn_timer = Timer.new()
				add_child(dhn_timer)
				dhn_timer.name = "dhn_timer" + str(note_spawn.id)
				dhn_timer.one_shot = true
				dhn_timer.start(note_spawn.seconds_until_spawn)
				dhn_timer.timeout.connect(on_dotted_half_note_timeout.bind(dhn_timer))
			
			NoteSpawn.NoteType.WholeNote:
				var wn_timer = Timer.new()
				add_child(wn_timer)
				wn_timer.name = "wn_timer" + str(note_spawn.id)
				wn_timer.one_shot = true
				wn_timer.start(note_spawn.seconds_until_spawn)
				wn_timer.timeout.connect(on_whole_note_timeout.bind(wn_timer))


func on_quarter_note_q_timeout(timer: Timer) -> void:
	print("Spawning new quarter note q")
	var qnq = quarter_note_q_scene.instantiate()
	qnq.quarter_note_q_hit.connect(on_note_hit)
	add_child(qnq)
	timer.queue_free()


func on_quarter_note_w_timeout(timer: Timer) -> void:
	print("Spawning new quarter note w")
	var qnw = quarter_note_w_scene.instantiate()
	qnw.quarter_note_w_hit.connect(on_note_hit)
	add_child(qnw)
	timer.queue_free()


func on_half_note_timeout(timer: Timer) -> void:
	print("spawning new half note")
	var hns = half_note_scene.instantiate()
	hns.half_note_hit.connect(on_note_hit)
	add_child(hns)
	timer.queue_free()


func on_dotted_half_note_timeout(timer: Timer) -> void:
	print("spawning new dotted half note")
	var dhns = dotted_half_note_scene.instantiate()
	dhns.dotted_half_note_hit.connect(on_note_hit)
	add_child(dhns)
	timer.queue_free()


func on_whole_note_timeout(timer: Timer) -> void:
	print("spawning new whole note")
	var wns = whole_note_scene.instantiate()
	wns.whole_note_hit.connect(on_note_hit)
	add_child(wns)
	timer.queue_free()


func on_note_hit(projectile: Node) -> void:
	print("spawing projectile: ", projectile.name)
	add_child(projectile)


func _on_boss_on_boss_hit(damage_amount: int) -> void:
	print("boss was hit for ", damage_amount, " damage")
	var next_health = $UI/TextureProgressBar.value - damage_amount
	
	# Check if boss should still be alive
	if next_health > 0:
		$UI/TextureProgressBar.value = next_health
	else:
		$Boss.queue_free()
		$Player.queue_free()
		$UI.queue_free()
		$YouWinLabel.show()
		stop_or_play_song()


func _on_hide_gameplay_message_label_timeout() -> void:
	$GameplayLabel.hide()
	$ControlsLabel.show()
	$HideControlsLabelTimer.start()


func _on_hide_controls_label_timeout() -> void:
	$ControlsLabel.hide()
	$GameplaySong.play()
	start_spawn_note_timers()
	$Boss.can_boss_move_horizontal = true
	$Player.can_player_move = true


func _on_boss_on_boss_hit_player() -> void:
	# Game over
	$Boss.queue_free()
	$Player.queue_free()
	$UI.queue_free()
	$YouLoseLabel.show()
	stop_or_play_song()
	
