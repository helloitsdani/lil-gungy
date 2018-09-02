scoreProgress = lerp(scoreProgress, score, 0.15)

progressBarWidth = min(
	0.5 * (scoreProgress / 100), 
	0.5,
)