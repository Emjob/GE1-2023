extends CharacterBody3D

@export var speed: float = 5
@export var rotSpeed:float = 5

func _ready():
	pass
	

func _process(delta):
	var f = Input.get_axis("Forward","Backward")
	var t = Input.get_axis("Right", "Left")
	var pos = transform.origin
	print(str(pos))
	pos +=  transform.basis.z * speed * delta * f
	transform.basis = transform.basis.rotated(Vector3.UP, t * delta * rotSpeed)
	
#	pos.z += speed
	transform.origin = pos
	pass
