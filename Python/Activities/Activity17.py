	
import pandas

table = {
    "Usernames" : ["admin", "Charles", "Deku"],
    "Passwords" : ["password", "Charl13", "AllMight"]
}


csv = pandas.DataFrame(table)
print(csv)

	
csv.to_csv("File.csv", index=False)