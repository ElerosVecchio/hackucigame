extends RichTextLabel

var dialogue_store
var line = "1"

func first_line(dialogue):
	dialogue_store = dialogue
	set_visible_characters(0)
	set_bbcode(dialogue_store[line])

func new_line(line):
	pass

func _on_Timer_timeout():
	pass # Replace with function body.
