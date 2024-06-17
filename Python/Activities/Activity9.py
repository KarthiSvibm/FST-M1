


li1 = list(input("Enter List 1 with separated by comma: ").split(", "))
li2 = list(input("Enter List 2 with separated by comma: ").split(", "))

li3 = []

for n in li1:
    if (int(n) % 2 != 0):
        li3.append(n)
for k in li2:
    if (int(k) % 2 == 0):
        li3.append(k)

print("The Entered First List: "+ str(li1))
print("----------------------------------")
print("The Entered Second List: "+ str(li2))
print("----------------------------------")
print("The Prepared Third List: "+str(li3))