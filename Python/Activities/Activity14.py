def fib(n):
    if n <= 1:
        return n
    else:
        return(fib(n-1) + fib(n-2))

ip = int(input("Enter a number: "))

if ip <= 0:
    print("Enter a number greater than Zero!")
else:
    print("Fibonacci Series: ")
    for k in range(ip):
        print=(fib(k))