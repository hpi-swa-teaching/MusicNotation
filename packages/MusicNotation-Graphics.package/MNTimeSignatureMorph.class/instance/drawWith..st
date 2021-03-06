drawing
drawWith: aDrawer
	| bottom top |
	top := self topWidthUnits.
	bottom := top + self bottomWidthUnits / 2.
	top := top max: bottom.
	
	aDrawer move: top.
	self draw: self numerator at: -1 with: aDrawer.
	
	aDrawer move: bottom.
	self draw: self denominator at: 1 with: aDrawer.