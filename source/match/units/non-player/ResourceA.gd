extends Area3D

@export var resource_a = 300  # TODO: default from constants


func _ready():
	_setup_mesh_colors()


func _setup_mesh_colors():
	var material = StandardMaterial3D.new()
	material.albedo_color = Constants.Match.Resources.A.COLOR
	for child in get_children():
		if child.name.begins_with("Mesh"):
			child.material_override = material