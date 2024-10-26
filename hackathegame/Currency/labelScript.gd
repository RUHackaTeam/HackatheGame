#TODO: CHANGE UI PREFERENCES
extends Node
# connect to scene
onready var currency_manager = $CurrencyManager
onready var currency_label = $CurrencyLabel

func _ready():
	currency_manager.connect("currency_changed", self, "_on_currency_changed")
	currency_label.text = "Currency: " + str(currency_manager.get_currency())

func _on_currency_changed(new_amount: int) -> void:
	currency_label.text = "Currency: " + str(new_amount)
