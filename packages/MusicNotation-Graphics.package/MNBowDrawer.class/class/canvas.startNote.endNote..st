as yet unclassified
canvas: aCanvas startNote: startMNNoteMorph endNote: endMNNoteMorph
	^ self new
		canvas: aCanvas;
		startNote: startMNNoteMorph;
		endNote: endMNNoteMorph;
		drawBow;
		yourself