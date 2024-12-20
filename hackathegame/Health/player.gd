extends Sprite2D

const MAX_HEALTH = 100
var health = MAX_HEALTH

func _ready() -> void:
	update_health_ui()
	$HealthBar.max_value = MAX_HEALTH

func update_health_ui():
	set_health_label()
	set_health_bar()

func set_health_label() -> void:
	$HealthLabel.text = "Health: %s" % health

func set_health_bar() -> void:
	$HealthBar.value = health

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		damage()

func damage() -> void:
	health -= 5
	# EVENT: DEATH
	if health == 0:
		trigger_death_scene()
	else:
		update_health_ui()

func trigger_death_scene() -> void:
	get_tree().change_scene_to_file("res://Health/Death.tscn")
