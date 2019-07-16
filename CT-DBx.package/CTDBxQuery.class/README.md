Base class for database tables - provides a standard set of methods.

Takes a query in the form of a set of Associations - for example :-

{ { #name -> 'Richard' . #age -> 21 } }

or - a more complicated example :-

{ 
	{ #name -> #( #or 'Richard' 'Dawn' ) . #age -> 21 } 
	. { #name -> #( #orderby desc ) } 
}

and populates the variable 'queryString'. with something like :-

select name, address, age from customer  where  name='Richard' and  age='21';

