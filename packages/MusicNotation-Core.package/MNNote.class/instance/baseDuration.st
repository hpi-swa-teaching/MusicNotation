accessing
baseDuration
	"the duration of the note without any dots applied"
	self validateDuration.
	^ self duration isInteger
		ifTrue: [ self duration asSmallerPowerOfTwo ]
		ifFalse: [ self isDotted
			ifTrue: [ (self duration numerator + 1) / (self duration denominator * 2) ]
			ifFalse: [ self duration ]]