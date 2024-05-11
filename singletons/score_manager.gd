extends Node

var _score: int = 0
var _high_score: int = 0

func set_score(score: int):
    _score = score
    #check high score
    if _score > _high_score:
        _high_score = _score
    SignalManager.on_score_updated.emit()

func get_score():
    return _score

func get_high_score():
    return _high_score

func increase_score():
    set_score(_score + 1)
