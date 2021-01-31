extends Node

onready var singleton = get_node("/root/Globabl")
var yes_cursor = load("res://Images/UI/yes_cursor.png")
var no_cursor = load("res://Images/UI/no_cursor.png")

func change_mouse(boo):
	if boo:
		Input.set_custom_mouse_cursor(yes_cursor, 0, Vector2(32,32))
	else:
		Input.set_custom_mouse_cursor(no_cursor, 0, Vector2(32,32))

func _on_Play_pressed():
	singleton.hasAnimal = false
	singleton.hasCRT = false
	singleton.hasCar = false
	singleton.hasChimney = false
	singleton.hasComputer = false
	singleton.hasConveyor = false
	singleton.hasGarbage = false
	singleton.hasHabitat = false
	singleton.hasOcean = false
	singleton.hasSewage = false
	singleton.hasSoil = false
	singleton.hasStump = false
	singleton.hasTractor = false
	get_tree().change_scene("res://Scenes/Menus/instructions.tscn")

func _on_Play_mouse_entered():
	change_mouse(true)

func _on_Play_mouse_exited():
	change_mouse(false)

func _on_Quit_pressed():
	get_tree().quit()

func _on_Quit_mouse_entered():
	change_mouse(true)

func _on_Quit_mouse_exited():
	change_mouse(false)

func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = button_pressed
