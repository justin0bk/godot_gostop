extends Node2D

var screen_size
var center_position
var window_mode
var Deck
var Board

var rng = RandomNumberGenerator.new()
var setup_ready = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = Vector2(get_viewport().size)
	center_position = screen_size / 2
	window_mode = DisplayServer.window_get_mode()
	Deck = $Deck
	Board = $Board
	
	
func setup_deck():
	if !setup_ready:
		var position_shift = 1.2
		var deck_position = center_position
		for card in Deck.current_deck:
			get_node("Deck").add_child(card)
			card.deck_image.visible = true
			card.scale = Vector2(0.8, 0.8)
			deck_position -= Vector2(0, 0.8 * position_shift)
			move_to(card, deck_position)
			await create_timer(0.02).timeout
		setup_ready = true


func setup_board():
	var drop_positions = Board.init_drop_coords(center_position, 250, -90)
	var inner_drop_positions = Board.init_drop_coords(center_position, 150, -90)
	for n in range(6):
		var top_card = Deck.current_deck[-1]
		var position_offset = Vector2(rng.randf_range(-10,10), rng.randf_range(-10,10))
		Deck.current_deck.erase(top_card)
		Board.board_cards.append(top_card)
		top_card.change_to("BOARD")
		top_card.scale = Vector2(0.6,0.6)
		top_card.get_node("AnimationPlayer").play("Deck2Front")
		move_to(top_card, inner_drop_positions[2*n] + position_offset)
		await create_timer(0.3).timeout
	
	if check_triple_suit(Board.board_cards):
		Board.sort_triples()
		
func check_triple_suit(card_set: Array) -> bool:
	var suits_count = {}
	for card in card_set:
		if suits_count.has(card.suit):
			suits_count[card.suit] += 1
		else:
			suits_count[card.suit] = 1
	for key in suits_count.keys():
		if suits_count[key] == 3:
			return true
	return false

func move_to(card, position):
	var tween = get_tree().create_tween()
	tween.tween_property(card, "position", position, 0.2)
	if card in Board.board_cards:
		var random_rotation_angle = rng.randf_range(-PI/12, PI/12)
		tween.tween_property(card, "rotation", random_rotation_angle, 0.05)
	

func create_timer(wait_time: float) -> Timer:
	var timer = Timer.new()
	timer.wait_time = wait_time
	timer.one_shot = true
	add_child(timer)  # Add the Timer to the scene tree
	timer.start()
	return timer
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var current_mode = DisplayServer.window_get_mode()
	if current_mode != window_mode:
		print(current_mode)
		window_mode = current_mode
