import pandas
from pandas import ExcelWriter

Data = {
    "FirstName"     : ["Satvik", "Avinash", "Lahri"],
    "LastName"      : ["Shah", "Kati", "Rath"],
    "Email"         : ["satshah@example.com", "avinashk@example.com", "lahri.rath@example.com"],
    "PhoneNumber"   : ["4537829158", "5892184058", "4528727830"]
}

dataframe = pandas.DataFrame(Data)

print(dataframe)

writer = ExcelWriter("Doc.xlsx")
dataframe.to_excel(writer, 'Sheet1', index = False)
