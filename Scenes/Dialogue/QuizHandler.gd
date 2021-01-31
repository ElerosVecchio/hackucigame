extends Node

onready var singleton = get_node("/root/Globabl")
var yes_cursor = load("res://Images/UI/yes_cursor.png")
var no_cursor = load("res://Images/UI/no_cursor.png")
onready var back2 = get_node("../areyousure/back2")
onready var back = get_node("../notdone/back")
onready var next = get_node("../areyousure/continue")
onready var areyousure = get_node("../areyousure")
onready var notdone = get_node("../notdone")

func change_mouse(boo):
	if boo:
		Input.set_custom_mouse_cursor(yes_cursor, 0, Vector2(32,32))
	else:
		Input.set_custom_mouse_cursor(no_cursor, 0, Vector2(32,32))

func _on_end_game_pressed():
	if (singleton.hasAnimal and singleton.hasCRT and singleton.hasCar and singleton.hasChimney and singleton.hasComputer and singleton.hasConveyor and singleton.hasGarbage and singleton.hasHabitat and singleton.hasOcean and singleton.hasSewage and singleton.hasSoil and singleton.hasStump and singleton.hasTractor):
		notdone.hide()
		back.disabled = true
		areyousure.show()
		next.disabled = false
		back2.disabled = false
	else:
		areyousure.hide()
		next.disabled = true
		back2.disabled = true
		notdone.show()
		back.disabled = false

func _on_end_game_mouse_entered():
	change_mouse(true)

func _on_end_game_mouse_exited():
	change_mouse(false)

func _on_back_pressed():
	areyousure.hide()
	next.disabled = true
	back2.disabled = true
	notdone.hide()
	back.disabled = true

func _on_back_mouse_entered():
	change_mouse(true)

func _on_back_mouse_exited():
	change_mouse(false)

func _on_continue_pressed():
	change_mouse(false)
	get_tree().change_scene("res://Scenes/Menus/quiz.tscn")

func _on_continue_mouse_entered():
	change_mouse(true)

func _on_continue_mouse_exited():
	change_mouse(false)

func _on_back2_mouse_entered():
	change_mouse(true)

func _on_back2_mouse_exited():
	change_mouse(false)

func _on_back2_pressed():
	areyousure.hide()
	next.disabled = true
	back2.disabled = true
	notdone.hide()
	back.disabled = true
