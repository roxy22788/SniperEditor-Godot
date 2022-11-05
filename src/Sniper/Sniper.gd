extends Node2D


var scope = null 
var chaveiro = null

onready var ScopePosition = $ScopePosition
onready var ChaveiroPosition = $ChaveiroPosition


func set_scope(s):
	add_instance(s, ScopePosition.position)
	scope = s
	
func del_scope():
	if scope:
		scope.queue_free()
		scope = null
		
		
		
func set_chaveiro(c):
	add_instance(c, ChaveiroPosition.position)
	chaveiro = c
	
func del_chaveiro():
	if chaveiro:
		chaveiro.queue_free()
		chaveiro = null
	
	
	
func add_instance(instance, pos):
	instance.position = pos
	add_child(instance)
