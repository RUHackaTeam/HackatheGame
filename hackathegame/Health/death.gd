extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$DeathLabel.text = "YOU DIED"

func _process(delta: float) -> void:
	if $Respawn.button_pressed:
		get_tree().change_scene_to_file("res://Overworld/Starter World.tscn")
	if $Quit.button_pressed:
		get_tree().change_scene_to_file("res://Menu/menu")
