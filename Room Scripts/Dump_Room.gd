extends Node

onready var dialogue_box = get_node("../DialogueBox/box/text_box")
onready var singleton = get_node("/root/Globabl")
var yes_cursor = load("res://Images/UI/yes_cursor.png")
var no_cursor = load("res://Images/UI/no_cursor.png")
var back_cursor = load("res://Images/UI/last_room.png")

func change_mouse(boo):
	if boo:
		Input.set_custom_mouse_cursor(yes_cursor, 0, Vector2(32,32))
	else:
		Input.set_custom_mouse_cursor(no_cursor, 0, Vector2(32,32))

func _on_garbage_pile_pressed():
	singleton.hasGarbage = true
	dialogue_box.new_line("4")

func _on_garbage_pile_mouse_entered():
	change_mouse(true)

func _on_garbage_pile_mouse_exited():
	change_mouse(false)

func _on_tractor_pressed():
	singleton.hasTractor = true
	dialogue_box.new_line("2")

func _on_tractor_mouse_entered():
	change_mouse(true)

func _on_tractor_mouse_exited():
	change_mouse(false)

func _on_crt_pressed():
	singleton.hasCRT = true
	dialogue_box.new_line("3")

func _on_crt_mouse_entered():
	change_mouse(true)

func _on_crt_mouse_exited():
	change_mouse(false)

func _on_back_pressed():
	get_tree().change_scene("res://Scenes/game scenes/ocean_dump.tscn")

func _on_back_mouse_entered():
	Input.set_custom_mouse_cursor(back_cursor, 0, Vector2(32,32))

func _on_back_mouse_exited():
	change_mouse(false)
