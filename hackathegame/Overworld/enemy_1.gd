extends Area2D
var entered = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("1")



func _on_body_entered(body: PhysicsBody2D):
	entered = true
	$Label.show()



func _on_body_exited(body):
	entered = false
	$Label.hide()
	

func _process(delta: float) -> void:
	if entered == true:
		if Input.is_action_just_pressed('ui_accept'):
			get_tree().change_scene_to_file("res://Battle/Battle.tscn")
