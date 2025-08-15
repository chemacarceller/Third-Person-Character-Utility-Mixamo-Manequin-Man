extends CharacterBody3D

@export var movementComponent : PackedScene

var _movementComponent : Node = null

func _ready() -> void:
	_movementComponent = movementComponent.instantiate()
	
	# Movement Component Configuration
	_movementComponent.leftInput="ui_left"
	_movementComponent.rightInput="ui_right"
	_movementComponent.frontInput="ui_up"
	_movementComponent.rearInput="ui_down"
	_movementComponent.jumpInput="ui_select"
	
	_movementComponent.movementMode=_movementComponent.MOVEMENT_MODE.ONESPEED
	_movementComponent.armature = $Armature
	_movementComponent.directionalObject = $CameraController
	
	add_child(_movementComponent)

# Getter and setter
func get_movementComponent() -> Node :
	return _movementComponent

func set_movementComponent(value : Node):
	_movementComponent = value
