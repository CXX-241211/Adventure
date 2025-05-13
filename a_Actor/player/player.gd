extends CharacterBody2D
class_name Player


@export var hp: int = 100
@export var move_speed: float = 100



func _ready():
	position = SceneManager.player_spawn_position


func _process(_delta):
	var move_vector: Vector2 = Input.get_vector('move_left', 'move_right', 'move_up', 'move_down')
	
	velocity = move_vector * move_speed			# 速度是一个向量
	
	if velocity.x > 0:
		$BoySprite.play('move_right')
	elif velocity.x < 0:
		$BoySprite.play('move_left')
	elif velocity.y > 0:
		$BoySprite.play('move_down')
	elif velocity.y < 0:
		$BoySprite.play('move_up')
	else:
		$BoySprite.stop()
		
	
	
	move_and_slide()
