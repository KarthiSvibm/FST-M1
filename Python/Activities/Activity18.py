import pandas


csv = pandas.read_csv("File.csv")
print("Excel Data: ")
print(csv)
print("Only Usernames: ")
print(csv ["Usernames"])
print("Username and Password from Row 2: ")
print("Username: ", csv ["Usernames"][2])
print("Password: ", csv ["Passwords"][2])
print("Usernames in Ascending order: ")
print(csv.sort_values("Usernames"))
print(csv.sort_values("Passwords",ascending = False))