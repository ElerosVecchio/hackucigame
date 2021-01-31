extends Node

onready var incorrect = get_node("../incorrect1")
onready var parent = get_parent()
onready var next = get_node("../../Question 2")

var ox = false
var co = false
var hy = false
var ni = false

func submit():
	if co and ox == false and hy == false and ni == false:
		parent.hide()
		next.show()
	else:
		incorrect.show()

func _on_oxygen_toggled(button_pressed):
	ox = button_pressed

func _on_co2_toggled(button_pressed):
	co = button_pressed

func _on_hydrogen_toggled(button_pressed):
	hy = button_pressed

func _on_nitrogen_toggled(button_pressed):
	ni = button_pressed

func _on_submit1_pressed():
	submit()
