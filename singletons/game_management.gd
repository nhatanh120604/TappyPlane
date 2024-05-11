extends Node

const SCROLL_SPEED = 200.0

func load_main_scene():
	var main_scene = load("res://scenes/main/main.tscn")
	get_tree().change_scene_to_packed(main_scene)

func load_game_scene():
	var game_scene = load("res://scenes/game/game.tscn")
	get_tree().change_scene_to_packed(game_scene)
