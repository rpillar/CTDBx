A CTDBxResult is the 'schema' like class that executes the querystring created by CTDBxQuery. Returns an OrderedCollection containing a set of dictionary 'data' objects - stored in the 'resulset'. 

All table model objects should inherit from CTDBxResult - the 'current' set of table variables will be stored in the object instance. 