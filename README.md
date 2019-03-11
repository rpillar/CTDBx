# CTDBx
Database interface - written in Pharo.

So this will produce the query string - ""where  name='Richard' and  age='21';"
```
| q s |
q := CTDBxQuery new.
s := q parseSearchQueryParams: { { #name -> 'Richard' . #age -> 21 } }.
s inspect.
```

or - "where (name='Richard' or name='Dawn') and  age='21' order by name desc;"
```
| q s |
q := CTDBxQuery new.
s := q parseSearchQueryParams: { 
	{ #name -> #( #or 'Richard' 'Dawn' ) . #age -> 21 } 
	. { #name -> #( #orderby desc ) } 
}.
s inspect.
```
