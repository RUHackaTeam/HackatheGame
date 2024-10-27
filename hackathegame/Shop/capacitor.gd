extends Button

var price = 25

func _on_pressed() -> void:
	if (Global.score - 25) > 0:
		Global.capacitors += 1
		Global.score = Global.score - 25
	else:
		print("YOU DON'T HAVE ENOUGH MONEY")
