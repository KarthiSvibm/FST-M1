def sum(n):
    z=0
    print (n)
    for k in n:
        z+=int(k)
    return z


ip = list(input(print("Enter the input: ")).split(", "))
value = sum(ip)

print("The recursive value of", ip, "is", value)