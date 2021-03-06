converting
setHalfSteps: anInteger of: aPitch
	| alter value step |
	value := anInteger \\ self halfStepsInOctave + 1.
	aPitch octave: anInteger // self halfStepsInOctave.
	
	alter := self alterFor: value.
	aPitch alter: alter.
	
	step := self halfStepSymbols at: value - alter.
	aPitch step: step.