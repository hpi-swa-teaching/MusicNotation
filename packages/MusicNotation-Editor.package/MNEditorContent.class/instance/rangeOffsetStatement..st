statement mapping 
rangeOffsetStatement: anInteger
	| offset |
	offset := ((1 to: anInteger - 1) collect: [:i | (self contentsList at: i) size] ).
	offset 
		ifEmpty: [^ 0] 
		ifNotEmpty: [^ offset sum].