extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

const SPEED = 150.0

func _physics_process(delta):
	# 1. Get the direction vector based on keyboard input
	# Returns a vector like (1, 0) for Right, (0, -1) for Up, etc.
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# 2. Apply movement velocity
	if direction != Vector2.ZERO:
		velocity = direction * SPEED
		
		# 3. Choose the directional animation based on input strength
		# We compare absolute values to see if the player is moving MORE horizontally or vertically
		if abs(direction.x) > abs(direction.y):
			# Horizontal movement dominates
			if direction.x > 0:
				animated_sprite.play("walkright")
			else:
				# If you have a separate "walk_left" animation:
				animated_sprite.play("walkleft")
				
				# ALTERNATIVE (uncomment below if reusing walk_right artwork flipped):
				# animated_sprite.play("walk_right")
				# animated_sprite.flip_h = true
		else:
			# Vertical movement dominates
			if direction.y > 0:
				animated_sprite.play("walkdown")
			else:
				animated_sprite.play("walkup")
				
		# Reset horizontal flipping if moving right or vertically
		if direction.x >= 0:
			animated_sprite.flip_h = false

	else:
		# 4. Idle Logic (Stop moving and play an idle frame or animation)
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
		
		# Optional: check the current playing animation to match your idle direction
		if animated_sprite.animation == "walkright":
			animated_sprite.play("idle_right") # or set to frame 0
		elif animated_sprite.animation == "walkleft":
			animated_sprite.play("idle_left")
		elif animated_sprite.animation == "walkup":
			animated_sprite.play("idle_up")
		else:
			animated_sprite.play("idle_down") # default fallback

	move_and_slide()
