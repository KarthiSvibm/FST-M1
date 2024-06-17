fruits = {
    "Apple" : 80,
    "Banana" : 10,
    "Grapes" : 50,
    "Orange" : 40
}

print("The Fruits available in Shop:")
for fr in fruits:
    print(fr)

while True:
    need = input("Which fruit you wanna check in stock? ")
    try:
        print(need, "costs Rs.", fruits[need], "only/-")
        break;
    except KeyError:
        print("Enter the Fruit name properly!!!")
        print("The Fruits available in Shop:")
        for fr in fruits:
            print(fr)
            pass

add = input(print("Do you want to add any New or modify Fruit in the Stock? ")).lower()

if(add=="yes"):
    while True:
            x = input(print("Enter the Fruit Name: "))
            y = input(print("Enter the price of", x, ": "))
            fruits [x] = y
            print("New Fruit", x, "is added in the list.. ")
            print("Now, The Fruits available in Shop and their prices are: ")
            for fr, fp in fruits.items():
                print(fr, fp)
            addagain = input(print("Do you want one more fruit? ")).lower()
            if(addagain=="yes"):
                pass
            else:
                print("Thanks for visiting the shop")
                raise SystemExit

else:
    print("Thanks for visiting the shop")