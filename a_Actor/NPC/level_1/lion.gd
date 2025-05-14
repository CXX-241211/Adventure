extends CharacterBody2D


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
