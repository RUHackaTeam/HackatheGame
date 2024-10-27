extends Label

func _process(delta) -> void:
	self.text = "Amount: " + str(Global.score)
