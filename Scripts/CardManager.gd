extends Node2D

const COLLISION_MASK_CARD = 1
const COLLISION_MASK_CARD_SLOT = 2
const CARDSLOT_SCENE_PATH = "res://Scenes/CardSlot.tscn"

var rng = RandomNumberGenerator.new()
var screen_size
var card_being_dragged
var is_hovering_on_card
var player_hand_reference

var slotted = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	player_hand_reference = $"../PlayerHand"
	$"../InputManager".connect("left_mouse_button_released", on_left_click_released)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if card_being_dragged:
		var mouse_pos = get_global_mouse_position()
		card_being_dragged.position = Vector2(clamp(mouse_pos.x, 0, screen_size.x),
											  clamp(mouse_pos.y, 0, screen_size.y))

func start_drag(card):
	card_being_dragged = card
	card.scale = Vector2(1, 1)

func finish_drag():
	card_being_dragged.scale = Vector2(1.05, 1.05)
	var card_slot_found = raycast_check_for_card_slot()
	if card_slot_found and not card_slot_found.card_in_slot:
		player_hand_reference.remove_card_from_hand(card_being_dragged)
		#Card dropped in empty card slot
		card_being_dragged.position = card_slot_found.position
		card_being_dragged.get_node("Area2D/CollisionShape2D").disabled = true
		# set random putdown angle
		var card_animations = card_being_dragged.get_node("AnimationPlayer")
		var putdown_animation = card_animations.get_animation("card_putdown")
		var position_track_idx = putdown_animation.find_track(".:position", 0)
		var rotation_track_idx = putdown_animation.find_track(".:rotation", 0)
		var rand_x = rng.randf_range(-10, 10) 
		var rand_y = rng.randf_range(-10, 10)
		putdown_animation.track_set_key_value(position_track_idx, 1, Vector2(rand_x, rand_y))
		putdown_animation.track_set_key_value(rotation_track_idx, 1, rng.randf_range(-0.18, 0.18))
		card_animations.play("card_putdown")
		
		card_slot_found.card_in_slot = true
		card_slot_found.z_index -= 1
		if slotted:
			for card in slotted:
				card.z_index = 0
		slotted.append(card_being_dragged)
		
		var cardslot_scene = preload(CARDSLOT_SCENE_PATH)
		var topslot = cardslot_scene.instantiate()
		topslot.position = card_slot_found.position
		$"../CardSlots".add_child(topslot)
		
	else:
		player_hand_reference.add_card_to_hand(card_being_dragged)
	card_being_dragged = null

func connect_card_signals(card):
	card.connect("hovered", on_hovered_over_card)
	card.connect("hovered_off", on_hovered_off_card)
	
func on_left_click_released():
	if card_being_dragged:
		finish_drag()

func on_hovered_over_card(card):
	if !is_hovering_on_card:
		is_hovering_on_card = true
		highlight_card(card, true)
	
func on_hovered_off_card(card):
	if !card_being_dragged:
		is_hovering_on_card = false
		highlight_card(card, false)
		var new_card_hovered = raycast_check_for_card()
		if new_card_hovered:
			highlight_card(new_card_hovered, true)
		else:
			is_hovering_on_card = false
	
	
func highlight_card(card, hovered):
	if hovered:
		card.scale = Vector2(1.05, 1.05)
		card.z_index = 2
	else:
		card.scale = Vector2(1,1)
		card.z_index = 1

var is_hovering_on_deck = false

func connect_deck_signals(deck):
	deck.connect("deck_hovered", on_hovered_over_deck)
	deck.connect("deck_hovered_off", on_hovered_off_deck)
	

func on_hovered_over_deck(deck):
	if !is_hovering_on_deck:
		is_hovering_on_deck = true
		deck.get_node("Sprite2D").texture = load("res://Assets/Deck_Pick.png")
		deck.position -= Vector2(0,8)
		deck.get_node("Area2D").get_node("CollisionShape2D").position += Vector2(0,8)
		
func on_hovered_off_deck(deck):
	is_hovering_on_deck = false
	deck.get_node("Sprite2D").texture = load("res://Assets/Deck.png")
	deck.position += Vector2(0,8)
	deck.get_node("Area2D").get_node("CollisionShape2D").position -= Vector2(0,8)
		
func raycast_check_for_card_slot():
	var space_state = get_world_2d().direct_space_state
	var parameters = PhysicsPointQueryParameters2D.new()
	parameters.position = get_global_mouse_position()
	parameters.collide_with_areas = true
	parameters.collision_mask = COLLISION_MASK_CARD_SLOT
	var result = space_state.intersect_point(parameters)
	if result.size() > 0:
		for r in result:
			var slot = r.collider.get_parent()
			if !slot.card_in_slot:
				return slot
	return null 

func raycast_check_for_card():
	var space_state = get_world_2d().direct_space_state
	var parameters = PhysicsPointQueryParameters2D.new()
	parameters.position = get_global_mouse_position()
	parameters.collide_with_areas = true
	parameters.collision_mask = COLLISION_MASK_CARD
	var result = space_state.intersect_point(parameters)
	if result.size() > 0:
		#return result[0].collider.get_parent()
		return get_card_with_highest_z_index(result)
	return null 
	

func get_card_with_highest_z_index(cards):
	var highest_z_card = cards[0].collider.get_parent()
	var highest_z_index = highest_z_card.z_index
	
	for i in range(1, cards.size()):
		var current_card = cards[i].collider.get_parent()
		if current_card.z_index > highest_z_index:
			highest_z_card = current_card
			highest_z_index = current_card.z_index
	return highest_z_card
