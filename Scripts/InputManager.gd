extends Node2D

const COLLISION_MASK_CARD = 1 << 0
const COLLISION_MASK_DECK = 1 << 1
var card_manager_reference
var temp_click_count = 0

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			match temp_click_count:
				0:
					card_manager_reference.setup_deck()
				1:
					card_manager_reference.setup_board()
			temp_click_count += 1
			print("current temp_click_count: ", temp_click_count)
		else:
			pass
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT:
		#if event.pressed:
			#card_manager_reference.setup_board()
		#else:
			#pass
			
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	card_manager_reference = $"../Card_Manager"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func raycast_at_cursor():
	var space_state = get_world_2d().direct_space_state
	var parameters = PhysicsPointQueryParameters2D.new()
	parameters.position = get_global_mouse_position()
	parameters.collide_with_areas = true
	var result = space_state.intersect_point(parameters)
	if result.size() > 0:
		for r in result:
			var result_collision_mask = r.collider.collision_mask
		#if result_collision_mask == COLLISION_MASK_CARD:
			## Card clicked
			#pass
		#elif result_collision_mask == COLLISION_MASK_DECK:
			## Deck clicked
			#pass
