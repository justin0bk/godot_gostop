extends Node2D

const NUM_DROP_AREAS = 12

var board_cards = []



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func init_drop_coords(center_position: Vector2, radius: float, start_angle_deg: float) -> Array:
	var points = []
	var angle_step = 2 * PI / NUM_DROP_AREAS
	var start_angle = deg_to_rad(start_angle_deg)
	for i in range(NUM_DROP_AREAS):
		var vertex_i_angle = i * angle_step + start_angle
		var x_coor = center_position.x + radius * cos(vertex_i_angle)
		var y_coor = center_position.y + radius * sin(vertex_i_angle)
		points.append(Vector2(x_coor, y_coor))
	return points
		
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
