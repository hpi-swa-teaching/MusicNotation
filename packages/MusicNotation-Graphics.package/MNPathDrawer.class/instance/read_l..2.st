parsing
read_l
	| end |
	end := self readRelativePoint.
	self addLineTo: end.
	self moveTo: end.