extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var p = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	 
	$AudioStreamPlayer2D.play() # play when ready executed, loop true on importation 



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$TextureRect.rect_position.x += p   #access directly node texrect 
	p = -180*delta
	if $TextureRect.rect_position.x <= -600:
		$TextureRect.rect_position.x = 1000
	 
#	pass
