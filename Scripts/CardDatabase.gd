enum CardType {
	SINGLE,
	DOUBLE,
	ANIMAL,
	BIRD,
	PLANT, # PLANT type can convert to double upon collection
	RED,
	PLAIN,
	BLUE,
	FAKE,
	BRIGHT,
	DIM # DIM type count as BRIGHT, but with an exception rule
}

const CARDS = {
	"jan_gwang": {
		"name": "jan_gwang",
		"path": "res://Assets/January_gwang.png",
		"suit": "Jan",
		"type": CardType.BRIGHT
		},
	"jan_pi_1": {
		"name": "jan_pi_1",
		"path": "res://Assets/January_pi_1.png",
		"suit": "Jan",
		"type": CardType.SINGLE
		},
	"jan_pi_2": {
		"name": "jan_pi_2",
		"path": "res://Assets/January_pi_2.png",
		"suit": "Jan",
		"type": CardType.SINGLE
		},
	"jan_tti": {
		"name": "jan_tti",
		"path": "res://Assets/January_tti.png",
		"suit": "Jan",
		"type": CardType.RED
		},
	"feb_pi_1": {
		"name": "feb_pi_1",
		"path": "res://Assets/February_pi_1.png",
		"suit": "Feb",
		"type": CardType.SINGLE
		},
	"feb_pi_2": {
		"name": "feb_pi_2",
		"path": "res://Assets/February_pi_2.png",
		"suit": "Feb",
		"type": CardType.SINGLE
		},
	"feb_tti": {
		"name": "feb_tti",
		"path": "res://Assets/February_tti.png",
		"suit": "Feb",
		"type": CardType.RED
		},
	"feb_yul": {
		"name": "feb_yul",
		"path": "res://Assets/February_yul.png",
		"suit": "Feb",
		"type": CardType.BIRD
		},
	"mar_gwang": {
		"name": "mar_gwang",
		"path": "res://Assets/March_gwang.png",
		"suit": "Mar",
		"type": CardType.BRIGHT
		},
	"mar_pi_1": {
		"name": "mar_pi_1",
		"path": "res://Assets/March_pi_1.png",
		"suit": "Mar",
		"type": CardType.SINGLE
		},
	"mar_pi_2": {
		"name": "mar_pi_2",
		"path": "res://Assets/March_pi_2.png",
		"suit": "Mar",
		"type": CardType.SINGLE
		},
	"mar_tti": {
		"name": "mar_tti",
		"path": "res://Assets/March_tti.png",
		"suit": "Mar",
		"type": CardType.RED
		},
	"apr_pi_1": {
		"name": "apr_pi_1",
		"path": "res://Assets/April_pi_1.png",
		"suit": "Apr",
		"type": CardType.SINGLE
		},
	"apr_pi_2": {
		"name": "apr_pi_2",
		"path": "res://Assets/April_pi_2.png",
		"suit": "Apr",
		"type": CardType.SINGLE
		},
	"apr_tti": {
		"name": "apr_tti",
		"path": "res://Assets/April_tti.png",
		"suit": "Apr",
		"type": CardType.PLAIN
		},
	"apr_yul": {
		"name": "apr_yul",
		"path": "res://Assets/April_yul.png",
		"suit": "Apr",
		"type": CardType.BIRD
		},
	"may_pi_1": {
		"name": "may_pi_1",
		"path": "res://Assets/May_pi_1.png",
		"suit": "May",
		"type": CardType.SINGLE
		},
	"may_pi_2": {
		"name": "may_pi_2",
		"path": "res://Assets/May_pi_2.png",
		"suit": "May",
		"type": CardType.SINGLE
		},
	"may_tti": {
		"name": "may_tti",
		"path": "res://Assets/May_tti.png",
		"suit": "May",
		"type": CardType.PLAIN
		},
	"may_yul": {
		"name": "may_yul",
		"path": "res://Assets/May_yul_ssang_pi.png",
		"suit": "May",
		"type": CardType.PLANT
		},
	"jun_pi_1": {
		"name": "jun_pi_1",
		"path": "res://Assets/June_pi_1.png",
		"suit": "Jun",
		"type": CardType.SINGLE
		},
	"jun_pi_2": {
		"name": "jun_pi_2",
		"path": "res://Assets/June_pi_2.png",
		"suit": "Jun",
		"type": CardType.SINGLE
		},
	"jun_tti": {
		"name": "jun_tti",
		"path": "res://Assets/June_tti.png",
		"suit": "Jun",
		"type": CardType.BLUE
		},
	"jun_yul": {
		"name": "jun_yul",
		"path": "res://Assets/June_yul.png",
		"suit": "Jun",
		"type": CardType.ANIMAL
		},
	"jul_pi_1": {
		"name": "jul_pi_1",
		"path": "res://Assets/July_pi_1.png",
		"suit": "Jul",
		"type": CardType.SINGLE
		},
	"jul_pi_2": {
		"name": "jul_pi_2",
		"path": "res://Assets/July_pi_2.png",
		"suit": "Jul",
		"type": CardType.SINGLE
		},
	"jul_tti": {
		"name": "jul_tti",
		"path": "res://Assets/July_tti.png",
		"suit": "Jul",
		"type": CardType.PLAIN
		},
	"jul_yul": {
		"name": "jul_yul",
		"path": "res://Assets/July_yul.png",
		"suit": "Jul",
		"type": CardType.ANIMAL
		},
	"aug_gwang": {
		"name": "aug_gwang",
		"path": "res://Assets/August_gwang.png",
		"suit": "Aug",
		"type": CardType.BRIGHT
		},
	"aug_pi_1": {
		"name": "aug_pi_1",
		"path": "res://Assets/August_pi_1.png",
		"suit": "Aug",
		"type": CardType.SINGLE
		},
	"aug_pi_2": {
		"name": "aug_pi_2",
		"path": "res://Assets/August_pi_2.png",
		"suit": "Aug",
		"type": CardType.SINGLE
		},
	"aug_yul": {
		"name": "aug_yul",
		"path": "res://Assets/August_yul.png",
		"suit": "Aug",
		"type": CardType.BIRD
		},
	"sep_pi_1": {
		"name": "sep_pi_1",
		"path": "res://Assets/September_pi_1.png",
		"suit": "Sep",
		"type": CardType.SINGLE
		},
	"sep_pi_2": {
		"name": "sep_pi_2",
		"path": "res://Assets/September_pi_2.png",
		"suit": "Sep",
		"type": CardType.SINGLE
		},
	"sep_tti": {
		"name": "sep_tti",
		"path": "res://Assets/September_tti.png",
		"suit": "Sep",
		"type": CardType.BLUE
		},
	"sep_yul": {
		"name": "sep_yul",
		"path": "res://Assets/September_yul_ssang_pi.png",
		"suit": "Sep",
		"type": CardType.PLANT
		},
	"oct_pi_1": {
		"name": "oct_pi_1",
		"path": "res://Assets/October_pi_1.png",
		"suit": "Oct",
		"type": CardType.SINGLE
		},
	"oct_pi_2": {
		"name": "oct_pi_2",
		"path": "res://Assets/October_pi_2.png",
		"suit": "Oct",
		"type": CardType.SINGLE
		},
	"oct_tti": {
		"name": "oct_tti",
		"path": "res://Assets/October_tti.png",
		"suit": "Oct",
		"type": CardType.BLUE
		},
	"oct_yul": {
		"name": "oct_yul",
		"path": "res://Assets/October_yul.png",
		"suit": "Oct",
		"type": CardType.ANIMAL
		},
	"nov_gwang": {
		"name": "nov_gwang",
		"path": "res://Assets/November_gwang.png",
		"suit": "Nov",
		"type": CardType.BRIGHT
		},
	"nov_pi_1": {
		"name": "nov_pi_1",
		"path": "res://Assets/November_pi_1.png",
		"suit": "Nov",
		"type": CardType.SINGLE
		},
	"nov_pi_2": {
		"name": "nov_pi_2",
		"path": "res://Assets/November_pi_2.png",
		"suit": "Nov",
		"type": CardType.SINGLE
		},
	"nov_ssang": {
		"name": "nov_ssang",
		"path": "res://Assets/November_ssang_pi.png",
		"suit": "Nov",
		"type": CardType.DOUBLE
		},
	"dec_gwang": {
		"name": "dec_gwang",
		"path": "res://Assets/December_gwang.png",
		"suit": "Dec",
		"type": CardType.DIM
		},
	"dec_ssang": {
		"name": "dec_ssang",
		"path": "res://Assets/December_ssang_pi.png",
		"suit": "Dec",
		"type": CardType.DOUBLE
		},
	"dec_tti": {
		"name": "dec_tti",
		"path": "res://Assets/December_tti.png",
		"suit": "Dec",
		"type": CardType.FAKE
		},
	"dec_yul": {
		"name": "dec_yul",
		"path": "res://Assets/December_yul.png",
		"suit": "Dec",
		"type": CardType.ANIMAL
		}
}
