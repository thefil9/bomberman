extends CheckButton


func _ready():
	if (ConfigurationNode._get_value("Sounds", "soundSwitch") != null):
		pressed = ConfigurationNode._get_value("Sounds", "soundSwitch")
		Sounds.get_tree().call_group("Sounds", "set_stream_paused", !pressed)



func _on_MusicSwitch_toggled(button_pressed):
	Sounds.get_tree().call_group("Sounds", "set_stream_paused", !button_pressed)		
	if(button_pressed == false):
		get_parent().get_node("MusicSlider").value = -10
	else:
		get_parent().get_node("MusicSlider").value = -2.5		
	ConfigurationNode._change_and_commit("Sounds", "soundSwitch", button_pressed)
