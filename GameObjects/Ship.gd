
extends Area2D

const SPEED = 200.0

func _process(delta):
	#delta equivale al tiempo
	var dir = Vector2()
	if(Input.is_action_pressed("move_up")):
		dir += Vector2(0,-1)
	if(Input.is_action_pressed("move_down")):
		dir += Vector2(0,1)
	if(Input.is_action_pressed("move_left")):
		dir += Vector2(-1,0)
	if(Input.is_action_pressed("move_right")):
		dir += Vector2(1,0)
	
	
	#translate(dir * delta * SPEED)
	var pos = get_pos()
	pos += dir * delta * SPEED
	
	var size = get_viewport_rect().size #Viewport es la ventana y rect toma los bordes como limite
	
	pos.x = clamp(pos.x,0,size.x)
	pos.y = clamp(pos.y,0,size.y)
	
	set_pos(pos)
func _ready():
	set_process(true)


