extends Node2D


func _process(delta: float) -> void:
	for particle1 in get_children():
		var force_array = []
		var total_force = Vector2()
		
		var particles = get_children()
		particles.erase(particle1)
		
		for particle2 in particles:
			var radius = Vector2()
			var dot_product = 0
			var force = Vector2()
			
			radius = particle2.position - particle1.position
			dot_product = ((radius.x * radius.x) + (radius.y * radius.y)) ** 1.5
			
			force = ((particle1.mass * particle2.mass * radius) / abs(dot_product))

			force_array.append(force)
		
		for force in force_array:
			total_force += force

		particle1.total_force = total_force
