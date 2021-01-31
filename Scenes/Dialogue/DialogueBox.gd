extends RichTextLabel

var dialogue_store

func first_line(dialogue):
	dialogue_store = dialogue
	set_visible_characters(0)
	set_bbcode(dialogue_store["1"]["text"])

func new_line(line):
	set_visible_characters(0)
	set_bbcode(dialogue_store[line]["text"])

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
