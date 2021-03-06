tests
testAddNote4Twice
	| context builder |
	context := self createContext.
	builder := MNNoteBuilder context: context pitchFrom: 'c4'.
	
	builder / 4 * 2.
	
	self assert: 2 equals: context measure notes size.
	self assert: context measure notes first hash equals: context measure notes second hash.
	self assert: 1/4 equals: context measure notes first duration.
	self assert: 1 equals: context measure notes first pitches size.
	self assert: $c equals: context measure notes first pitches first step.
	self assert: 4 equals: context measure notes first pitches first octave.
	self assert: 0 equals: context measure notes first pitches first alter.