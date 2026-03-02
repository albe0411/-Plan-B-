extends Node2D


func _ready() -> void:
	for partikle in get_children():
		var Farray = []
		var Ftotal = Vector2()
		
		var particles = get_children()
		particles.erase(partikle)
		
		for i in particles:
			var r =  i.position - partikle.position
			var F = Vector2()
			F.x = partikle.mass * i.mass / r.x ** 2
			F.y = partikle.mass * i.mass / r.y ** 2
			
			if r.x < 0:
				F.x *= -1
			if r.y < 0:
				F.y *= -1
			
			Farray.append(F)
		for F in Farray:
			Ftotal += F
		
		partikle.get_child(2).text = str(Ftotal)


# Called every frame.
func _process(delta: float) -> void:
	pass
