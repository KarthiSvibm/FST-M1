li = list(input("Enter the List value separated by comma: ").split(", "))

print("The List provided is: ", str(li))


print("First number from the List: "+li[0])
print("Last number from the List: "+li[-1])

if(li[0]==(li[-1])):
    print ("True")
else:
    print("False")