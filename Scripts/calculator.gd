extends Node2D


func _ready() -> void:
	for particle in get_children():
		var Farray = []
		var Ftotal = Vector2()
		
		var particles = get_children()
		particles.erase(particle)
		
		for i in particles:
			var r =  i.position - particle.position
			var F = Vector2()
			var dot_product = 0
			dot_product = (abs(r) * abs(r) * abs(r)).x + (abs(r) * abs(r) * abs(r)).y
			
			F = ((particle.mass * i.mass * r) / dot_product)

			Farray.append(F)
			
		for F in Farray:
			Ftotal += F

		particle.get_child(2).text = str(Ftotal)
		particle.Ftotal = Ftotal



# Called every frame.
func _process(delta: float) -> void:
	pass
