extends Node2D

enum STATE {
	NONE,
	DECK,
	HAND,
	BOARD,
	SCORE,
}

var suit
var type

var front_image
var back_image
var deck_image
var images = [front_image, back_image, deck_image]

var state = STATE.NONE

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	front_image = get_node("FrontImage")
	back_image = get_node("BackImage")
	deck_image = get_node("DeckImage")

func change_to(new_state: String):
	match new_state:
		"NONE":
			state = STATE.NONE
		"DECK":
			state = STATE.DECK
		"HAND" :
			state = STATE.HAND
		"BOARD":
			state = STATE.BOARD
		"SCORE":
			state = STATE.SCORE

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
