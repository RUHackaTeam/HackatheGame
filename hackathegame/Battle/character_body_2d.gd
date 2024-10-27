extends CharacterBody2D

@onready var animation_tree: AnimationTree = $AnimationTree

func _process(delta):
	update_animation_parameters()
	
func update_animation_parameters():
	animation_tree["parameters/conditions/idle"] = true
	
	if (Input.is_action_just_pressed("Click") == true):
		animation_tree["parameters/conditions/damage"] = true
	else:
		animation_tree["parameters/conditions/damage"] = false
		animation_tree["parameters/conditions/idle"] = true
		
	if (Input.is_action_pressed("Right") == true):
		animation_tree["parameters/conditions/shoot"] = true
	else:
		animation_tree["parameters/conditions/shoot"] = false
		animation_tree["parameters/conditions/idle"] = true
		
