extends Area2D
var p1_score = 0
func _on_body_entered(body):
	print(body.name,"has entered goal of player 2")
	if body.name == "Ball":
		print("Player 1 Goalllll !")
		p1_score += 1
		get_node("Score_P2").text = str(p1_score)
		body.isDestroyed() 
