extends Node2D

func _ready() -> void:
	$TITLE.text = "WELCOME TO THE WORLD OF CIRCUITS AND CATS"
	$Enter.text = "Press [Enter] or [Space]"
func _process(delta: float) -> void:
	if Input.is_action_just_pressed('ui_accept') :
		get_tree().change_scene_to_file("res://Overworld/Starter World.tscn")
