enum AnimalType {
	NONE,
	REGULAR,
	PLANT,
	BIRD,
}

enum RibbonType {
	NONE,
	RED_RIBBON,
	RIBBON,
	BLUE_RIBBON,
	FAKE_RIBBON
}

const CARDS = {
	"jan_gwang": {
		"name": "jan_gwang",
		"path": "res://Assets/January_gwang.png",
		"suit": "Jan",
		"type": [true, AnimalType.NONE, RibbonType.NONE, false, false]
		},
	"jan_pi_1": {
		"name": "jan_pi_1",
		"path": "res://Assets/January_pi_1.png",
		"suit": "Jan",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"jan_pi_2": {
		"name": "jan_pi_2",
		"path": "res://Assets/January_pi_2.png",
		"suit": "Jan",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"jan_tti": {
		"name": "jan_tti",
		"path": "res://Assets/January_tti.png",
		"suit": "Jan",
		"type": [false, AnimalType.NONE, RibbonType.RED_RIBBON, false, false]
		},
	"feb_pi_1": {
		"name": "feb_pi_1",
		"path": "res://Assets/February_pi_1.png",
		"suit": "Feb",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"feb_pi_2": {
		"name": "feb_pi_2",
		"path": "res://Assets/February_pi_2.png",
		"suit": "Feb",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"feb_tti": {
		"name": "feb_tti",
		"path": "res://Assets/February_tti.png",
		"suit": "Feb",
		"type": [false, AnimalType.NONE, RibbonType.RED_RIBBON, false, false]
		},
	"feb_yul": {
		"name": "feb_yul",
		"path": "res://Assets/February_yul.png",
		"suit": "Feb",
		"type": [false, AnimalType.BIRD, RibbonType.NONE, false, false]
		},
	"mar_gwang": {
		"name": "mar_gwang",
		"path": "res://Assets/March_gwang.png",
		"suit": "Mar",
		"type": [true, AnimalType.NONE, RibbonType.NONE, false, false]
		},
	"mar_pi_1": {
		"name": "mar_pi_1",
		"path": "res://Assets/March_pi_1.png",
		"suit": "Mar",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"mar_pi_2": {
		"name": "mar_pi_2",
		"path": "res://Assets/March_pi_2.png",
		"suit": "Mar",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"mar_tti": {
		"name": "mar_tti",
		"path": "res://Assets/March_tti.png",
		"suit": "Mar",
		"type": [false, AnimalType.NONE, RibbonType.RED_RIBBON, false, false]
		},
	"apr_pi_1": {
		"name": "apr_pi_1",
		"path": "res://Assets/April_pi_1.png",
		"suit": "Apr",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"apr_pi_2": {
		"name": "apr_pi_2",
		"path": "res://Assets/April_pi_2.png",
		"suit": "Apr",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"apr_tti": {
		"name": "apr_tti",
		"path": "res://Assets/April_tti.png",
		"suit": "Apr",
		"type": [false, AnimalType.NONE, RibbonType.RIBBON, false, false]
		},
	"apr_yul": {
		"name": "apr_yul",
		"path": "res://Assets/April_yul.png",
		"suit": "Apr",
		"type": [false, AnimalType.BIRD, RibbonType.NONE, false, false]
		},
	"may_pi_1": {
		"name": "may_pi_1",
		"path": "res://Assets/May_pi_1.png",
		"suit": "May",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"may_pi_2": {
		"name": "may_pi_2",
		"path": "res://Assets/May_pi_2.png",
		"suit": "May",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"may_tti": {
		"name": "may_tti",
		"path": "res://Assets/May_tti.png",
		"suit": "May",
		"type": [false, AnimalType.NONE, RibbonType.RIBBON, false, false]
		},
	"may_yul": {
		"name": "may_yul",
		"path": "res://Assets/May_yul_ssang_pi.png",
		"suit": "May",
		"type": [false, AnimalType.PLANT, RibbonType.NONE, false, true]
		},
	"jun_pi_1": {
		"name": "jun_pi_1",
		"path": "res://Assets/June_pi_1.png",
		"suit": "Jun",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"jun_pi_2": {
		"name": "jun_pi_2",
		"path": "res://Assets/June_pi_2.png",
		"suit": "Jun",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"jun_tti": {
		"name": "jun_tti",
		"path": "res://Assets/June_tti.png",
		"suit": "Jun",
		"type": [false, AnimalType.NONE, RibbonType.BLUE_RIBBON, false, false]
		},
	"jun_yul": {
		"name": "jun_yul",
		"path": "res://Assets/June_yul.png",
		"suit": "Jun",
		"type": [false, AnimalType.REGULAR, RibbonType.NONE, false, false]
		},
	"jul_pi_1": {
		"name": "jul_pi_1",
		"path": "res://Assets/July_pi_1.png",
		"suit": "Jul",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"jul_pi_2": {
		"name": "jul_pi_2",
		"path": "res://Assets/July_pi_2.png",
		"suit": "Jul",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"jul_tti": {
		"name": "jul_tti",
		"path": "res://Assets/July_tti.png",
		"suit": "Jul",
		"type": [false, AnimalType.NONE, RibbonType.RIBBON, false, false]
		},
	"jul_yul": {
		"name": "jul_yul",
		"path": "res://Assets/July_yul.png",
		"suit": "Jul",
		"type": [false, AnimalType.REGULAR, RibbonType.NONE, false, false]
		},
	"aug_gwang": {
		"name": "aug_gwang",
		"path": "res://Assets/August_gwang.png",
		"suit": "Aug",
		"type": [true, AnimalType.NONE, RibbonType.NONE, false, false]
		},
	"aug_pi_1": {
		"name": "aug_pi_1",
		"path": "res://Assets/August_pi_1.png",
		"suit": "Aug",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"aug_pi_2": {
		"name": "aug_pi_2",
		"path": "res://Assets/August_pi_2.png",
		"suit": "Aug",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"aug_yul": {
		"name": "aug_yul",
		"path": "res://Assets/August_yul.png",
		"suit": "Aug",
		"type": [false, AnimalType.BIRD, RibbonType.NONE, false, false]
		},
	"sep_pi_1": {
		"name": "sep_pi_1",
		"path": "res://Assets/September_pi_1.png",
		"suit": "Sep",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"sep_pi_2": {
		"name": "sep_pi_2",
		"path": "res://Assets/September_pi_2.png",
		"suit": "Sep",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"sep_tti": {
		"name": "sep_tti",
		"path": "res://Assets/September_tti.png",
		"suit": "Sep",
		"type": [false, AnimalType.NONE, RibbonType.BLUE_RIBBON, false, false]
		},
	"sep_yul": {
		"name": "sep_yul",
		"path": "res://Assets/September_yul_ssang_pi.png",
		"suit": "Sep",
		"type": [false, AnimalType.PLANT, RibbonType.NONE, false, true]
		},
	"oct_pi_1": {
		"name": "oct_pi_1",
		"path": "res://Assets/October_pi_1.png",
		"suit": "Oct",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"oct_pi_2": {
		"name": "oct_pi_2",
		"path": "res://Assets/October_pi_2.png",
		"suit": "Oct",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"oct_tti": {
		"name": "oct_tti",
		"path": "res://Assets/October_tti.png",
		"suit": "Oct",
		"type": [false, AnimalType.NONE, RibbonType.BLUE_RIBBON, false, false]
		},
	"oct_yul": {
		"name": "oct_yul",
		"path": "res://Assets/October_yul.png",
		"suit": "Oct",
		"type": [false, AnimalType.REGULAR, RibbonType.NONE, false, false]
		},
	"nov_gwang": {
		"name": "nov_gwang",
		"path": "res://Assets/November_gwang.png",
		"suit": "Nov",
		"type": [true, AnimalType.NONE, RibbonType.NONE, false, false]
		},
	"nov_pi_1": {
		"name": "nov_pi_1",
		"path": "res://Assets/November_pi_1.png",
		"suit": "Nov",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"nov_pi_2": {
		"name": "nov_pi_2",
		"path": "res://Assets/November_pi_2.png",
		"suit": "Nov",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, false]
		},
	"nov_ssang": {
		"name": "nov_ssang",
		"path": "res://Assets/November_ssang_pi.png",
		"suit": "Nov",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, true]
		},
	"dec_gwang": {
		"name": "dec_gwang",
		"path": "res://Assets/December_gwang.png",
		"suit": "Dec",
		"type": [true, AnimalType.NONE, RibbonType.NONE, false, false]
		},
	"dec_ssang": {
		"name": "dec_ssang",
		"path": "res://Assets/December_ssang_pi.png",
		"suit": "Dec",
		"type": [false, AnimalType.NONE, RibbonType.NONE, true, true]
		},
	"dec_tti": {
		"name": "dec_tti",
		"path": "res://Assets/December_tti.png",
		"suit": "Dec",
		"type": [false, AnimalType.NONE, RibbonType.FAKE_RIBBON, false, false]
		},
	"dec_yul": {
		"name": "dec_yul",
		"path": "res://Assets/December_yul.png",
		"suit": "Dec",
		"type": [false, AnimalType.REGULAR, RibbonType.NONE, false, false]
		}
}
