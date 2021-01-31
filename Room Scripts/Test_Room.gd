extends Node

onready var dialogue_box = get_node("../DialogueBox/box/text_box")

func _on_test_button_pressed():
	dialogue_box.new_line("2")
