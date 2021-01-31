extends RichTextLabel

var dialogue_store

func first_line(dialogue):
	dialogue_store = dialogue
	set_visible_characters(0)
	set_bbcode(dialogue_store["1"])

func new_line(line):
	set_visible_characters(0)
	set_bbcode(dialogue_store[line])

func _on_Timer_timeout():
	pass # Replace with function body.
