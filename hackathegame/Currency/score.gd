extends Label

func _process(delta) -> void:
	self.text = "Amount: " + str(Global.score)


func _on_button_pressed() -> void:
	Global.score += 1

func _on_change_pressed() -> void:
	get_tree().change_scene_to_file("res://Currency/CurrentManager.tscn")
