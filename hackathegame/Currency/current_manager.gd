extends Control

var amount: int = 0

signal currency_change(amount)

func _ready() -> void:
	set_currency(100) # give the user some currency for component in the beginning
	
func add_currency(value: int) -> void:
	amount += value
	$CurrencyLabel.text = "Amount: " + str(amount)
	emit_signal("currency_change", amount)

func spend_currency(value: int) -> bool:
	if amount >= value:
		amount -= value
		$CurrencyLabel.text = "Amount: " + str(amount)
		emit_signal("currency_changed", amount)
		return true
	return false

func get_currency() -> int:
	return amount

func set_currency(value: int) -> void:
	amount = value
	$CurrencyLabel.text = "Amount: " + str(amount)
	emit_signal("currency_changed", amount)
