extends Node

export (String, FILE, "*.json") var dialogue_path

func scene_starts():
	var dialogue = load_from_json(dialogue_path)

func load_from_json(dialogue_path):
	var file = File.new()
	assert(file.file_exists(dialogue_path))
	file.open(dialogue_path, file.READ)
	var dialogue = parse_json(file.get_as_text())
	assert(dialogue.size() > 0)
	file.close()
	return dialogue
