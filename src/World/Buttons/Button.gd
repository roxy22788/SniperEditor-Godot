extends Button

signal button_pressed(texture)
var texture 

func set_texture(sprite):
	texture = sprite
	icon = load(sprite)


func _on_Button_button_down():
	emit_signal("button_pressed", texture)
