extends Node

export (String, FILE, "*.json") var dialogue_path
onready var dialogue_box = get_node("../DialogueBox/box/text_box")

func _ready():
	var dialogue = load_from_json()
	dialogue_box.first_line(dialogue)

func load_from_json():
	var file = File.new()
	assert(file.file_exists(dialogue_path))
	file.open(dialogue_path, file.READ)
	var dialogue = parse_json(file.get_as_text())
	file.close()
	return dialogue
