extends TileMap

func _ready():
	for x in 20:
		for y in 20:
			#这里的x,y参数是tileMap里面的格子位置，tile参数是tileSet中 AltasTile图集的id
			#最后的autotile_coord参数是在TileSet中AltasTile的相对坐标位置 Vector2(0,0)表示图集中的第一列，第一行,Vector2(2,0)表示图集中的第二列第行 规律是从左往右，从上到下
			set_cell(x, y, 0,false,false,false,Vector2(0,0))
