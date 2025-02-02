extends Resource

class_name NoteSpawn

enum NoteType {
	QuarterNoteQ,
	QuarterNoteW,
	HalfNote,
	DottedHalfNote,
	WholeNote
}

@export var id: int
@export var note_type: NoteType
@export var seconds_until_spawn: float

func _init(_id: int, _note_type: NoteType, _seconds_until_spawn: float):
	id = _id
	note_type = _note_type
	seconds_until_spawn = _seconds_until_spawn
