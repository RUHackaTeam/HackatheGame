extends Button

var price = 25

func _on_pressed() -> void:
	if (Global.score - 25) >= 0:
		Global.wires += 1
		Global.score = Global.score - 25
	else:
		$Label.text = "you don't have enough money"
		$Label.text ="25"
		
