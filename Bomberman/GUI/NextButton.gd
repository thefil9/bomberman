extends Button

func _ready():
	pass # Replace with function body.

func _on_NextButton_pressed():
	var error = get_tree().change_scene( "res://Board//Board.tscn");
	if error == OK:
		pass
	else:
		print(error);
