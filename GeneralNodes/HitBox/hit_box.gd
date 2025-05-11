class_name HitBox extends Area2D

signal Damaged(damage: int)

func TakeDamage(_damage: int) -> void:
	print("TakeDamage: ", _damage)
	Damaged.emit(_damage)
