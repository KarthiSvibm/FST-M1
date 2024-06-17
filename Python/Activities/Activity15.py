fruits = {
    "Apple" : 80,
    "Banana" : 10,
    "Grapes" : 50,
    "Orange" : 40
}

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