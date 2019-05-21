extends HSlider


func _ready():
	if (ConfigurationNode._get_value("Sounds", "sound") != null):
		value = ConfigurationNode._get_value("Sounds", "sound")
		Sounds.get_tree().call_group("Sounds", "set_volume_db", value)



func _on_MusicSlider_value_changed(value):
	Sounds.get_tree().call_group("Sounds", "set_volume_db", value)
	if(value == -10):
		Sounds.get_tree().call_group("Sounds", "set_stream_paused", true)
		get_parent().get_node("MusicSwitch").pressed = false
	else:
		Sounds.get_tree().call_group("Sounds", "set_stream_paused", false)		
		get_parent().get_node("MusicSwitch").pressed = true		
	ConfigurationNode._change_and_commit("Sounds", "sound", value)
