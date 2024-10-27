extends Button

var price = 75

func _on_pressed() -> void:
	if (Global.score - 75) >= 0:
		Global.AttackPotion += 1
		Global.score = Global.score - 75
	else:
		print("YOU DON'T HAVE ENOUGH MONEY")
