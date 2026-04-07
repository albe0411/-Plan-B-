extends Node2D


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	for particle in get_children():
		var force_array = []
		var total_force = Vector2()
		
		var particles = get_children()
		particles.erase(particle)
		
		for i in particles:
			var radius =  i.position - particle.position
			var force = Vector2()
			var dot_product = 0 
			dot_product = (abs(radius) * radius * radius).x + (abs(radius) * radius * radius).y
			
			force = ((100 * particle.mass * i.mass * radius) / dot_product)

			force_array.append(force)
			
		for force in force_array:
			total_force += force

		particle.total_force = total_force
