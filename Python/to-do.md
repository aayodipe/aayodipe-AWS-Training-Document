# PYTHON DATATYPE
	Str ==> Text type
	int, float  ==> number type
	bool ==> Boolean type
	None = None type
	list, tuple and range  ==> sequence type
	dict ==> Mapping type

# STRING
 <!-- Text surrounded by single or double quote -->
  
 Example "hello" 'hey' "How are you doing?" 'I am fine.'
	- slicing   string[start:end]  ==>  end not inclusive
	- Modify 
		- lower  ==> To all lower case
		- upper  ==> to all upper case
		- trim   ==> to remove white space
		- split  ==> To turn string to list ==> string.split(',')
		- replace==> To replace a letter with another letter. Replace all 	occurrence of that letter

	- concatenate string ==> join together two or multiple string ==> 'Hello' + 'There'  ==> 'Hello There'
	- format strings
		a. Format by concatenate ==> 'I have ' + 2 + 'dogs'
		b. Format by parenthesis ==> 'I have {} dogs' ==> number = 3; txt.format(age)
		c. f'I have {age} dogs'
	- escape character  ==>  'I\'m available'
	- string methods   for more see https://www.w3schools.com/python/python_strings_methods.asp
	- 
# Number
	convert string to int
	operation +/-*//%

# Float 
	convert to two decimal point  ==> round(3.1445,2)
	convert float to int  ==> int(3.1445)

# Operation 	
    +   Addition
	-   Subtraction
	*   Multiplication
	/   Division
	%	Modulus
	**	Exponentiation
	//	Floor Division

# Boolean 
	Boolean from expression such  as (10 < 9), (-1 >= 4)

# List
	- Access List Items 
		index 
		negative index 
		ranges with start and end
		range with only end
		range with only start
	- Change List Items
		change with index such as list[1] = 'b'
	- Add List Items
		add item with append to the end
		add item with insert at a specific index. List.insert(index, "newitem")
		add with extend. use for joining 2 lists such as List.extend(newlist)
	- Remove List Items
		remove with empty pop() to remove from the end
		remove with pop(index) to remove item in the index position
	- delete Lists
		delete the entire list with del
	- Clear Lists
		clear all item in the list without deleting the list. return empty list
	- Loop Lists
		use len() to know how many item in a list
		use "for item in List:" to loop over the list 
		use while to loop over the list. don't forget to always increment the index

	- List Comprehension
#		List Comprehension- make a new list form a list
		do all in one line such as newlist = [x for x in fruits if "a" in x]
	- Sort Lists
		re-arrange item of a list
	- Copy Lists
	- Join Lists
	- List Methods

# Condition statement
kola = "a man"
if kola =="a woman":
	print("hello Mr Kola")