statement mapping 
statementsOf: aMNNote
	^ (1 to: self statementMapping size) 
		select: [ :i | (self statementMapping at: i) includes: aMNNote].