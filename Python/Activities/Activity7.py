li = list(input("Enter your list Numbers with comma between number: ").split(", "))
sum=0
for lis in li:
    sum+=int(lis)

print("The Entered List is = ", str(li))
print("The total sum of the entered List value is: "+ str(sum))