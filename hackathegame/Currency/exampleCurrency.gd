# use this code within other nodes for other scenes
# Most likely within the shop or during fighting
# spending in the shop
# earning through defeating enemies
# extends Node

onready var currency_manager = $CurrencyManager

func _ready():
	currency_manager.connect("currency_changed", self, "_on_currency_changed")
	
	#Example: Setting currency manually
	currency_manager.set_currency(500)
	
	#Example: Adding currency value 100
	currency_manager.add_currency(100)
	
	#Example: Spening currency value 50
	if currency_manager.spend_currency(50):
		print("Spent 50 currency!")
	else:
		print("Not enough currency!")

func _on_currency_changed(new_amount: int) -> void:
	print("Currency updated: ", new_amount)
