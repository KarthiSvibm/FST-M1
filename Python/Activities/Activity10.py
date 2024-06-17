li = list(input("Enter tuple with separated by comma: ").split(", "))

t_tuple = tuple(li)
print("Given List: ", li)
print("Given Tuples: ", t_tuple)   

print("Numbers in Tuple that are Divisible by 5:")
for n in t_tuple:
    if(int(n)%5==0):
        print(n)