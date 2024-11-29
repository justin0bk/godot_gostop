extends Node2D

const CARD_SCENE_PATH = "res://Scenes/Card.tscn"
const CARD_DATABASE = preload("res://Scripts/CardDatabase.gd")

var current_deck

func _ready() -> void:
	current_deck = new_deck()
	current_deck.shuffle()

func new_deck():
	var deck = []
	for CARD_DATA in CARD_DATABASE.CARDS.values():
		var card_scene = preload(CARD_SCENE_PATH)
		var card = card_scene.instantiate()
		card.name = CARD_DATA["name"]
		card.suit = CARD_DATA["suit"]
		card.type = CARD_DATA["type"]
		card.get_node("FrontImage").texture = load(CARD_DATA["path"])
		card.change_to("DECK")
		deck.append(card)
	print(deck.size())
	return deck


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
