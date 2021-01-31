extends Node

onready var dialogue_box = get_node("../DialogueBox/box/text_box")
onready var singleton = get_node("/root/Globabl")
var yes_cursor = load("res://Images/UI/yes_cursor.png")
var no_cursor = load("res://Images/UI/no_cursor.png")
var back_cursor = load("res://Images/UI/last_room.png")
var next_cursor = load("res://Images/UI/next_room.png")

func change_mouse(boo):
	if boo:
		Input.set_custom_mouse_cursor(yes_cursor, 0, Vector2(32,32))
	else:
		Input.set_custom_mouse_cursor(no_cursor, 0, Vector2(32,32))

func _on_duck_pressed():
	singleton.hasAnimal = true
	dialogue_box.new_line("2")

func _on_duck_mouse_entered():
	change_mouse(true)

func _on_duck_mouse_exited():
	change_mouse(false)

func _on_sewage_pressed():
	singleton.hasSewage = true
	dialogue_box.new_line("4")

func _on_sewage_mouse_entered():
	change_mouse(true)

func _on_sewage_mouse_exited():
	change_mouse(false)

func _on_garbage_pressed():
	singleton.hasOcean = true
	dialogue_box.new_line("3")

func _on_garbage_mouse_entered():
	change_mouse(true)

func _on_garbage_mouse_exited():
	change_mouse(false)

func _on_back_pressed():
	get_tree().change_scene("res://Scenes/game scenes/forest.tscn")

func _on_back_mouse_entered():
	Input.set_custom_mouse_cursor(back_cursor, 0, Vector2(32,32))

func _on_back_mouse_exited():
	change_mouse(false)

func _on_next_pressed():
	get_tree().change_scene("res://Scenes/game scenes/land_dump.tscn")

func _on_next_mouse_entered():
	Input.set_custom_mouse_cursor(next_cursor, 0, Vector2(32,32))

func _on_next_mouse_exited():
	change_mouse(false)
