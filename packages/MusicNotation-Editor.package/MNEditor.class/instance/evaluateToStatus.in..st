evaluating
evaluateToStatus: textOrStream in: anEnvironment
	^ [
		self evaluate: textOrStream in: anEnvironment.
		MNEditorStatusSuccess new ]
		
		on: SyntaxErrorNotification
		do: [ :e | e return: (MNEditorStatusException new syntaxError: e in: self) ]
		
		on: UnhandledError
		do: [ :e | e return: (MNEditorStatusException new error: e exception in: self) ]