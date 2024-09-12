import pandas as pp
reading=pp.read_excel("employee_details.xlsx")
print(reading)
print("count")
print(reading.shape)
print("printing only email")
print(reading["Email"])
print("ascending order")
print(reading.sort_values("FirstName",ascending=True))


