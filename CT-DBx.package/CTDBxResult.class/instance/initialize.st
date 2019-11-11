initialization
initialize 
	super initialize.
	self conn: CTDBxConnection new.
	self query: CTDBxQuery new.