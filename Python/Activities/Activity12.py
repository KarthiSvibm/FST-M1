def getsum(n):
  z=0
  print (n)
  for k in range(n+1):
    z+=k
    if(n==k):
        return z


ip = input(print("Enter the input: "))
value = getsum(int(ip))

print("The recursive value of", ip, "is", value)