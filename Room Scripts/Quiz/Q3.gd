extends Node

onready var incorrect = get_node("../incorrect1")
onready var parent = get_parent()
onready var next = get_node("../../Question 4")

var po = false
var oc = false
var an = false
var al = false

func submit():
	if al and po == false and oc == false and an == false:
		parent.hide()
		next.show()
	else:
		incorrect.show()

func _on_pollute_toggled(button_pressed):
	po = button_pressed

func _on_ocean_toggled(button_pressed):
	oc = button_pressed

func _on_animals_toggled(button_pressed):
	an = button_pressed

func _on_all_toggled(button_pressed):
	al = button_pressed

func _on_submit1_pressed():
	submit()
