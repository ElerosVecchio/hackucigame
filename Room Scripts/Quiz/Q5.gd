extends Node

onready var incorrect = get_node("../incorrect1")

var pr = false
var sh = false
var pl = false
var fr = false

func submit():
	if pl and fr == false and pr == false and sh == false:
		get_tree().change_scene("res://Scenes/Menus/congrats.tscn")
	else:
		incorrect.show()

func _on_prepare_toggled(button_pressed):
	pr = button_pressed

func _on_short_toggled(button_pressed):
	sh = button_pressed

func _on_planned_toggled(button_pressed):
	pl = button_pressed

func _on_fraud_toggled(button_pressed):
	fr = button_pressed

func _on_submit1_pressed():
	submit()
