extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member variables
const MOTION_SPEED = 160 * 2 # Pixels/second


func _physics_process(_delta):
	var motion = Vector2()
	var moved = false
	
	if Input.is_action_pressed("move_up"):
		motion += Vector2(0, -1)
		moved = true
	elif Input.is_action_pressed("move_bottom"):
		motion += Vector2(0, 1)
		moved = true


	if Input.is_action_pressed("move_left"):
		motion += Vector2(-1, 0)
		moved = true
		get_node("AnimatedSprite").flip_h = true
	elif Input.is_action_pressed("move_right"):
		motion += Vector2(1, 0)
		moved = true
		get_node("AnimatedSprite").flip_h = false
	
	motion = motion.normalized() * MOTION_SPEED

	move_and_slide(motion)
	
	if(moved):
		get_node("AnimatedSprite").play("andando")
	else:
		get_node("AnimatedSprite").stop()

	
	
	
	
	
	
	
	
	
	
	
	
	#if(Input.is_key_pressed(KEY_SPACE)):
	#	var flagPacked = preload("res://dano.tscn")
		

	#	var flag = flagPacked.instance()
	#	flag.position = position;
		
	#	get_tree().get_root().add_child(flag)