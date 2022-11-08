# Datatype
# ============

# 1  String - These are text in a single or double column e.g "Good Morning Vivien",
# print("good morning vivien".title())
# print("good morning vivien".upper())
# print("good morning vivien".lower())
# print(" good morning vivien ".count("o"))
# print(len((" good morning vivien ").strip()))

# 2. number
    # operators
     #  addition 
# print(2 + 3)
# print(2 - 3)
# print(2 * 3)
# print(4 / 2)
# advance
# print(2**2)
# print(13//2)
# print(10%2)


# 3. float
# 
# number with decimal point
# print(round(3.14597649464, 2))

# 4. boolean    true or false
# Are you married ? true or false


## WORKING WITH VARIABLES
# ==============================
# variable is a container use to store a value

# message = "When a program contains a significant error, Python displays a traceback, which is an error report. Python looks through the file and tries to identify the problem"
# print(message)
# add_number = 4+ 6
# add_more_number = 9
# print(add_number + add_more_number)


# DATA STRUCTURE
# =============
# 1. Selecting Item from the List     
# 2. Add Item to the end of the List
# 3. Remove Item from the end of the List                        
# hobbie = ["orange", "n" , "apple", "grape", 80, True, ["boy", "girl"]]
# question = "What is the first hobby of kola"
# print(hobbie[6][0])
  
# dynamically type - Change the type of value or assign a different type of value to it e.g greeting = 'Hi',greetings = 32
# Statically Type - a[int] = 0

            # 0           1       2       3       4             5
# fruits[-5]
# fruits[-2]
# fruits[-1]

# getNumber1 = int(input('choose one number?'))
# getNumber2 = int(input('choose second number ?'))
# sunInput = getNumber1 + getNumber2
# print(fruits[sunInput])

# Working With Count
# ======================
# print(len(fruits))
users =['ola','oochay','Kola',"Paul",'henry',"vivien","Wole",'Ariyo']
selectUserHenry =[]

# print(fruits)

for user in users:
    print("hi " + user)
    print('How are you today '+ user + '?')
    if user == "henry":
        selectUserHenry.append(user)
        print(selectUserHenry)
    print('==============================================')
