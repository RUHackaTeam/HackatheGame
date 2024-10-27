extends Sprite2D

var dragging = false
var of = Vector2(0,0)
var snap = 50
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dragging:
		var newPos = get_global_mouse_position() - of
		position = Vector2(snapped(newPos.x, snap))

func _on_button_button_down():
	dragging = true;
	of = get_global_mouse_position() - global_position
	
func _on_button_button_up():
	dragging = false
