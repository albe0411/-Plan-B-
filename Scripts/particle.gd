extends RigidBody2D

var total_force = Vector2()


func _draw() -> void:
	draw_line(self.position - global_position, self.position - global_position + total_force * 0.5, Color.RED, 4)

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	apply_central_force(total_force)

func _process(delta: float) -> void:
	queue_redraw()
	get_child(2).text = str(total_force)
	get_child(3).text = str(position)
