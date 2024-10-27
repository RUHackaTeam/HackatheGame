# extends Node2D

onready var currency_manager = $CurrencyCounter  # Adjust the path as necessary

func _ready():
	currency_manager.add_currency(50)  # Add 50 currency
	if currency_manager.spend_currency(20):
		print("Spent 20 currency!")
	else:
		print("Not enough currency!")
	
	print("Current Currency: ", currency_manager.get_currency())
