extends Sprite2D


func _ready() -> void:
	print('game start')
	position.x = 0
	position.y = 0
	rotation_degrees = 0

func _process(delta: float) -> void:
	position.x += 0.2
	position.y += 0.3
	rotation_degrees  += 1
