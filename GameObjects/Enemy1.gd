
extends Area2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	pass

func _on_Area2D_area_enter( area ):
	if(area.get_name() == "Ship"):
		area.oneDown()
		#elif(area.get_name() == "Shoot"):
			#pass
		
