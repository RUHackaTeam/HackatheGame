extends Control

func _process(delta) -> void:
	$score.text = "Amount: " + str(Global.score)

func _on_change_pressed() -> void:
	get_tree().change_scene_to_file("res://Currency/Currency.tscn")

func _on_decrease_pressed() -> void:
	Global.score -= 1
