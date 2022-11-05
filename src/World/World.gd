extends Node2D

var button = preload('res://src/World/Buttons/Button.tscn')

onready var SniperBuilder = $SniperBuilder
onready var VBoxContainerScopes = $ScopesButtons/VBoxContainer
onready var VBoxContainerChaveiros = $ChaveirosButtons/VBoxContainer

func _ready():
	add_amostras_scopes()
	add_amostras_chaveiros()
	
	
func add_amostras_scopes():
	var sprites = SniperBuilder.scopesSprites
	for i in sprites:
		var b = create_scopes_buttons(i)
		VBoxContainerScopes.add_child(b)
	
func create_scopes_buttons(sprite):
	var sb = button.instance()
	sb.set_texture(sprite)
	sb.connect("button_pressed", self, "button_scope_pressed")
	return sb
	
func button_scope_pressed(sprite):
	SniperBuilder.add_scope(sprite)
	
	
	
func add_amostras_chaveiros():
	var sprites = SniperBuilder.chaveirosSprites
	for i in sprites:
		var b = create_chaveiros_buttons(i)
		VBoxContainerChaveiros.add_child(b)
		
		
func create_chaveiros_buttons(sprite):
	var cb = button.instance()
	cb.set_texture(sprite)
	cb.connect("button_pressed", self, 'button_chaveiro_pressed')
	return cb
	
func button_chaveiro_pressed(sprite):
	SniperBuilder.add_chaveiro(sprite)
	
	
func remove_scope():
	SniperBuilder.remove_scope()
	
func remove_chaveiro():
	SniperBuilder.remove_chaveiro()


