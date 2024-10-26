extends Node

var amount: int = 0

signal currency_change(amount)

func add_currency(value: int) -> void:
	amount += value
	emit_signal("currency_change", amount)

func spend_currency(value: int) -> bool:
	if amount >= value:
		amount -= value
		emit_signal("currency_changed", amount)
		return true
	return false

func get_currency() -> int:
	return amount

func set_currency(value: int) -> void:
	amount = value
	emit_signal("currency_changed", amount)
