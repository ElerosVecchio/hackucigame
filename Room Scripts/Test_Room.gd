extends Node

onready var dialogue_box = get_node("../DialogueBox/box/text_box")
var yes_cursor = load("res://Images/UI/yes_cursor.png")
var no_cursor = load("res://Images/UI/no_cursor.png")

func change_mouse(boo):
	if boo:
		Input.set_custom_mouse_cursor(yes_cursor, 0, Vector2(32,32))
	else:
		Input.set_custom_mouse_cursor(no_cursor, 0, Vector2(32,32))

func _on_test_button_pressed():
	dialogue_box.new_line("3")

func _on_test_button_mouse_entered():
	change_mouse(true)

func _on_test_button_mouse_exited():
	change_mouse(false)
