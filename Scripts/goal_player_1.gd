extends Area2D
var p2_score = 0
func _on_body_entered(body):
	print(body.name,"has entered goal of player 1")
	if body.name == "Ball":
		print("Player 2 Goalllll !")
		p2_score += 1
		get_node("Score_P1").text = str(p2_score)
		body.isDestroyed()
 
