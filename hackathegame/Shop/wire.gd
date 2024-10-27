extends Button

var price = 80

func _on_pressed() -> void:
	if (Global.score - 80) >= 0:
		Global.wires += 1
		Global.score = Global.score - 80
	else:
		print("YOU DON'T HAVE ENOUGH MONEY")
		
