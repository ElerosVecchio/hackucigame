extends Node

onready var incorrect = get_node("../incorrect1")
onready var parent = get_parent()
onready var next = get_node("../../Question 5")

var tr = false
var an = false
var er = false
var al = false

func submit():
	if al and tr == false and an == false and er == false:
		parent.hide()
		next.show()
	else:
		incorrect.show()

func _on_tree_toggled(button_pressed):
	tr = button_pressed

func _on_animals_toggled(button_pressed):
	an = button_pressed

func _on_erode_toggled(button_pressed):
	er = button_pressed

func _on_all_toggled(button_pressed):
	al = button_pressed

func _on_submit1_pressed():
	submit()
