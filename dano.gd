extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
const TIME_PERIOD = 0.5 # 500ms

var time = 0

func _process(delta):
	time+=delta
	if time>=0.3:
		 queue_free()
	if(get_tree().get_root().get_node("colworld").get_node("inimigo") != null):
		if(get_position().distance_to(	get_tree().get_root().get_node("colworld").get_node("inimigo").get_position()) < 40 ):
			get_tree().get_root().get_node("colworld").get_node("inimigo").queue_free()
	

	
