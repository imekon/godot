
extends Sprite

var x setget ,getX
var y setget ,getY
var z setget ,getZ

func _ready():
	pass
	
func randomWarp():
	x = floor(rand_range(0, 8))
	y = floor(rand_range(0, 8))
	z = floor(rand_range(0, 8))
	
func move(dx, dy, dz):
	x = x + dx
	y = y + dx
	z = z + dz
	
func getX():
	return x
	
func getY():
	return y
	
func getZ():
	return z
