if (timer <= 0) {
	timerCountingUp = true
}

if (timer >= 999) {
	timerCountingUp = false
}

if (timerCountingUp) {
	timer += 1
} else {
	timer -= 1
}

alarm[0] = room_speed