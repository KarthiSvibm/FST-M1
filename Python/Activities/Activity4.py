P1 = str(input("Enter Player 1 name: "))
P2 = str(input("Enter Player 2 name: "))


while True:
    while True:
        c1 = str(input("{P1}, Choose your option: ")).upper()
        c2 = str(input("{P2}, Choose your option: ")).upper()

        if(c1 == "ROCK") & (c2 == "PAPER"):
            print(P2 +"wins")
            break;
        elif(c1 == "ROCK") & (c2 == "SCISSOR"):
            print (P1 + "wins")
            break;
        elif(c1 == "PAPER") & (c2 == "ROCK"):
            print(P1 + "wins")
            break;
        elif(c1 == "PAPER") & (c2 == "SCISSOR"):
            print(P2 + "wins")
            break;
        elif(c1 == "SCISSOR") & (c2 == "ROCK"):
            print(P2 + "wins")
            break;
        elif(c1 == "SCISSOR") & (c2 == "PAPER"):
            print(P1 + "wins")
            break;
        elif (c1==c2) & ((c1 == "PAPER") or (c1 == "SCISSOR") or (c1=="ROCK")):
            print("Its a tie")
            break;
        else:
            print("Please enter proper Input.")
            pass

    
    while True:
        oncemore = str(input("Do you want to play again: ")).lower()
        if(oncemore == "yes"):
            break;  
        elif(oncemore == "no"):
            print("Exiting the Game...")
            raise SystemExit
        else:
            print("Please say Yes or No")
            pass