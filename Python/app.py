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
# users =['ola','oochay','Kola',"Paul",'henry',"vivien","Wole",'Ariyo']
# selectUserHenry =[]

# print(fruits)

# for user in users:
#     print("hi " + user)
#     print('How are you today '+ user + '?')
#     if user == "henry":
#         selectUserHenry.append(user)
#         print(selectUserHenry)
#     print('==============================================')


# ===================================================================

# 11/09/2020

# # x = "c o r rection"[0:2]
# x = "39474393 983488340 89343039 839498t9083"
# print(x.split())

# name = "adeyemi" 
# modifiedname = name.replace("a", "A")
# print(modifiedname)


# Contatenation
# ==================
# greeting = 'Hello ' 
# name = "yemi"

# print(greeting + name )
# name = "Bola"
# age = 3
# height = "3.3"
# "The name of  my son is" + name + "he is " + age 
# number = 5
# 'I have ' + number  + 'dogs'

# number = 1
# color = black
# f'I have {number} {color} dog'

# word = "I\'m a man"
# print(word)

# # working with boolean
# True or False 
# number1 = input('What is first number')
# number2= input('What is second number')

# if number1 > number2:
#     print( True) 


# # list       -7-6-5-4-3-2-1
# # =======     0 1 2 3 4 5 6
# numberList = [2,4,6,8,0,4,2]

# a = numberList[0] 
# b = numberList[2] 
# c = numberList[-1] 
# d = numberList[2:4]
# e = numberList[:4]
# # print(a,b,c)
# print(e)

users = ["ao","b","co","ao","b","c"]
newusers = []
# for user in users:
#     print(user)          
#     print(f'greeting {user}')   
    
kola = "a man"

def greet_man():
    for user in users:
        if user == "ao":
            newusers.append(user)
    return newusers


print(greet_man())