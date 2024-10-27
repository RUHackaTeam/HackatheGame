extends Button

var price = 50

func _on_pressed() -> void:
	if (Global.score - 50) >= 0:
		Global.resistors += 1
		Global.score = Global.score - 50
	else:
		print("YOU DON'T HAVE ENOUGH MONEY")
