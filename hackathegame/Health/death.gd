extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$DeathLabel.text = "YOU DIED"
	
	if (eventSelfShort()):
		$TipLabel.text = "Your circuit shorted!"
	else if (eventEnemyKill()):
		$TipLabel.text = "You got killed by the enemy."
		
	if ($Respawn.button_pressed):
		# Actions for respawning
	else if ($Quit.button_pressed):
		# Actions for Quitting

func eventSelfShort() -> bool:
	if (SelfShort()):
		return true
	else:
		return false
	
func eventEnemyKill() -> bool:
	if (EnemyKill()):
		return true
	else:
		return false
