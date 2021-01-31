extends Node

onready var incorrect = get_node("../incorrect1")
onready var parent = get_parent()
onready var next = get_node("../../Question 3")

var pl = false
var pa = false
var le = false
var ew = false

func submit():
	if ew and pl == false and pa == false and le == false:
		parent.hide()
		next.show()
	else:
		incorrect.show()

func _on_submit1_pressed():
	submit()

func _on_plastic_toggled(button_pressed):
	pl = button_pressed

func _on_paper_toggled(button_pressed):
	pa = button_pressed

func _on_lead_toggled(button_pressed):
	le = button_pressed

func _on_ewaste_toggled(button_pressed):
	ew = button_pressed
