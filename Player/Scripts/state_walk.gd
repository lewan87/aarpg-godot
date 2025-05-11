class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle : State = $"../Idle"
@onready var attack: State = $"../Attack"


## when the player enters this State
func Enter() -> void:
	player.UpdateAnimation("walk")
	pass

## when the player exits this State
func Exit() -> void:
	pass

## _process update in this state
func Process(_delta: float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("walk")
	return null

## _physics_process update in this state
func Physics(_delta: float) -> State:
	return null

## input events in this state
func HandleInput(_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
