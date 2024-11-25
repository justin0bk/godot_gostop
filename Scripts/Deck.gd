extends Node2D

const CARD_SCENE_PATH = "res://Scenes/Card.tscn"
const START_HAND_COUNT = 7

signal deck_hovered
signal deck_hovered_off

var card_database_reference
var player_deck = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	card_database_reference = preload("res://Scripts/CardDatabase.gd")
	for card in card_database_reference.CARDS.values():
		player_deck.append(card)
	player_deck.shuffle()
	
	get_parent().get_node("CardManager").connect_deck_signals(self)
	
	for i in range(START_HAND_COUNT):
		draw_card()

func draw_card():
	var card_drawn = player_deck[0]
	player_deck.erase(card_drawn)
	
	if player_deck.size() == 0:
		$Area2D/CollisionShape2D.disabled = true
		$Sprite2D.visible = false
	
	var card_scene = preload(CARD_SCENE_PATH)
	var new_card = card_scene.instantiate()
	$"../CardManager".add_child(new_card)
	new_card.name = card_drawn["name"]
	new_card.suit = card_drawn["suit"] # 3 letter string 
	new_card.type = card_drawn["type"] # list of type values
	new_card.get_node("CardImage").texture = load(card_drawn['path'])
	$"../PlayerHand".add_card_to_hand(new_card)
	new_card.get_node("AnimationPlayer").play("card_flip")
	
func _on_area_2d_mouse_entered() -> void:
	emit_signal("deck_hovered", self)

func _on_area_2d_mouse_exited() -> void:
	emit_signal("deck_hovered_off", self)
	
