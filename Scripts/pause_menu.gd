extends Control

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		print("test !")
		self.is_paused = !is_paused
		
		
var is_paused = false :
	set(value):
		is_paused = value
		get_tree().paused = is_paused
		visible = is_paused
		





func _on_resume_pressed():
	is_paused = false


func _on_quit_pressed():
	get_tree().quit()
