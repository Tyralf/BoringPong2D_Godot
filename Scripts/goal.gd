extends Area2D

var score = 0
#ScoreLabel permet de definir le label du score board qui va etre modifié par le but
@export var ScoreLabel = ""
const SCOREPATH = "/root/Node/ScoreBoard/"

func _on_body_entered(body):
	if body.name == "Ball":
		incrementScore()
		if score < 10:
			body.reset()
		else:
			get_tree().quit()

func incrementScore():
	score += 1
	get_node(str(SCOREPATH + ScoreLabel)).text = str(score)
