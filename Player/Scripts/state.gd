class_name State extends Node

## Stores a reference to the player that this States belongs to
static var player: Player

func _ready():
	pass


## when the player enters this State
func Enter() -> void:
	pass

## when the player exits this State
func Exit() -> void:
	pass

## _process update in this state
func Process(_delta: float) -> State:
	return null

## _physics_process update in this state
func Physics(_delta: float) -> State:
	return null

## input events in this state
func HandleInput(_event: InputEvent) -> State:
	return null
