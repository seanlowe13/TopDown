extends CharacterBody3D

const SPEED = 5.0
const ACCELERATION = 10.0
const ROTATION_SPEED = 5.0

@export var gravity = -10.0

func _physics_process(delta):
		
		#movement variable
		var input_movement_vector = Vector3.ZERO
		
		#movement inputs
		input_movement_vector.x = Input.get_action_strength("right") -  Input.get_action_strength("left")
		input_movement_vector.z = Input.get_action_strength("back") -  Input.get_action_strength("forward")
		
		#Normalize so diagonal movement is same speed
		input_movement_vector = input_movement_vector.normalized()
		
		#movement speed
		velocity.x = input_movement_vector.x * SPEED
		velocity.z = input_movement_vector.z * SPEED
	
		move_and_slide()
