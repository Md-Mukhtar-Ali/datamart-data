x=25
name= "md mukhtar ali"
#x=str(x)
print("a is ",x)
print("your name is "+name+"and length is "+str(len(name)))
a=10
b=20
if a > b:
    print("a is greater than b")
else:
    print("a is less than b")
a=10
b=10

if(a==b):
    print("a is equal to b {a}=={b}")

else:
    print(f"a is not equal to b {a}!={b}")

def add(a,b):
    return a+b

def sub(a,b):
    return a-b

def mul(a,b):
    return a*b

def div(a,b):
    return a/b
def calc():
 while True: 
    print("Enter 1 for addition\nEnter 2 for subtraction:\nEnter 3 for multiplication:\nEnter 4 for division")
    userInput=input()

    if userInput == "5":
        break;
    if userInput in ["1", "2", "3", "4"]:
     try:
         while True:
             num1=float(input("Enter first number:\t"))
        num2=float(input("Enter second number:\t"))

        if userInput=="1":
            num1=input("Enter first number:\t")
            num2=input("Enter second number:\t")
            print(f"Addition of {num1} and {num2} is ", add(int(num1), int(num2)))

        elif userInput=="2":
            num1=input("Enter first number:\t")
            num2=input("Enter second number:\t")
            print(f"subtraction of {num1} and {num2} is ",sub(int(num1),int(num2)))


        elif userInput=="3":
            num1=input("Enter first number:\t")
            num2=input("Enter second number:\t")
            print(f"Multiplication of {num1} and {num2} is ", mul(int(num1),int(num2)))



        elif userInput=="4":
            num1=input("Enter first number:\t")
            num2=input("Enter second number:\t")
            print(f"Division of {num1} and {num2} is ", div(int(num1),int(num2)))
     except ValueError:
                print("Invalid input! Please enter numeric values.")
    else:
            print("invalid input")

calc()
