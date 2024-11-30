extends Node2D

const NUM_DROP_AREAS = 12
const CENTER_OFFSET = -10

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
		var y_coor = center_position.y + radius * sin(vertex_i_angle) + CENTER_OFFSET
		points.append(Vector2(x_coor, y_coor))
	return points
		
func sort_triples():
	var suits = {}
	for card in board_cards:
		if suits.has(card.suit):
			suits[card.suit].append(card)
		else:
			suits[card.suit] = [card]
	for key in suits.keys():
		var repeat_count = suits[key].size()
		if repeat_count == 3:
			var first_card_position = suits[key][0].position
			for to_move in suits[key].slice(1, repeat_count):
				var tween = get_tree().create_tween()
				tween.tween_property(to_move, "position", first_card_position, 0.2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
