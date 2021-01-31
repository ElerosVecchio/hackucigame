extends Node

onready var dialogue_box = get_node("../DialogueBox/box/text_box")
onready var singleton = get_node("/root/Globabl")
var yes_cursor = load("res://Images/UI/yes_cursor.png")
var no_cursor = load("res://Images/UI/no_cursor.png")
var next_cursor = load("res://Images/UI/next_room.png")

func change_mouse(boo):
	if boo:
		Input.set_custom_mouse_cursor(yes_cursor, 0, Vector2(32,32))
	else:
		Input.set_custom_mouse_cursor(no_cursor, 0, Vector2(32,32))

func _on_car_pressed():
	singleton.hasCar = true
	dialogue_box.new_line("2")

func _on_car_mouse_entered():
	change_mouse(true)

func _on_car_mouse_exited():
	change_mouse(false)

func _on_chimney_pressed():
	singleton.hasChimney = true
	dialogue_box.new_line("3")

func _on_chimney_mouse_entered():
	change_mouse(true)

func _on_chimney_mouse_exited():
	change_mouse(false)

func _on_door_pressed():
	get_tree().change_scene("res://Scenes/game scenes/factory_interior.tscn")

func _on_door_mouse_entered():
	Input.set_custom_mouse_cursor(next_cursor, 0, Vector2(32,32))

func _on_door_mouse_exited():
	change_mouse(false)
