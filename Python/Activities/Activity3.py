p1 = str(input("Enter P1 name: "))
p2 = str(input("Enter P2 name: "))

c1 = str(input("P1, Choose your option: ")).upper()
c2 = str(input("P2, Choose your option: ")).upper()

if(c1 == "ROCK") & (c2 == "PAPER"):
    print("P2 wins")
elif(c1 == "ROCK") & (c2 == "SCISSOR"):
    print ("P1 wins")
elif(c1 == "PAPER") & (c2 == "ROCK"):
    print("P1 Wins")
elif(c1 == "PAPER") & (c2 == "SCISSOR"):
    print("P2 Wins")
elif(c1 == "SCISSOR") & (c2 == "ROCK"):
    print("P2 Wins")
elif(c1 == "SCISSOR") & (c2 == "PAPER"):
    print("P1 Wins")
else:
    if (c1==c2):
        print("Its a tie")
    else:
        print("Please enter proper Input.")