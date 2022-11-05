extends Node2D


export(PackedScene) var SniperPath

var scopePath = 'res://src/Accessories/Scope/Scope.tscn'
var scopesSprites = ['res://src/Accessories/Scope/Sprites/Sprite1.png', 
'res://src/Accessories/Scope/Sprites/Sprite2.png']

var chaveiroPath = 'res://src/Accessories/Chaveiro/Chaveiro.tscn'
var chaveirosSprites = ['res://src/Accessories/Chaveiro/Sprites/Sprite1.png',
'res://src/Accessories/Chaveiro/Sprites/Sprite2.png',
'res://src/Accessories/Chaveiro/Sprites/Sprite3.png']


func _ready():
	var s = SniperPath.instance()
	add_child(s)
	SniperPath = s
	

func add_scope(sprite):
	var scope = create_scope(sprite)
	SniperPath.del_scope()
	SniperPath.set_scope(scope)

func remove_scope():
	SniperPath.del_scope()
	
func create_scope(sprite):
	var scope = load(scopePath)
	var s = scope.instance()
	s.set_texture(sprite)
	return s
	
	
func add_chaveiro(sprite):
	var chaveiro = create_chaveiro(sprite)
	SniperPath.del_chaveiro()
	SniperPath.set_chaveiro(chaveiro)
	
func remove_chaveiro():
	SniperPath.del_chaveiro()
	
func create_chaveiro(sprite):
	var chaveiro = load(chaveiroPath)
	var c = chaveiro.instance()
	c.set_texture(sprite)
	return c

