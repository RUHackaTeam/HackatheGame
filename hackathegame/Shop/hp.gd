extends Button

var price = 10

func _on_pressed() -> void:
	if (Global.score - 10) >= 0:
		Global.HealthPotion += 1
		Global.score = Global.score - 10
	else:
		$Label.text = "you don't have enough money"
		$Label.text ="10"
