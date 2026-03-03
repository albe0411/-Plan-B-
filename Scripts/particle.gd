extends RigidBody2D

var Ftotal = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _draw() -> void:
	draw_line(self.position - global_position, self.position - global_position + Ftotal * 25, Color.RED, 4)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
