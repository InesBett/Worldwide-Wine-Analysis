import pandas as pd

df= pd.read_csv("WineDataset.csv")
df

df.columns= [col.replace(" ", "_").lower() for col in df.columns]

df.columns= ["title","description", "price", "capacity_cl", "grape","secondary_grape_varieties", "closure_type", "country", "unit", "characteristics","per_bottle_/_case_/_each", "type", "alcohol_percentage", "region", "style", "year", "appellation"]
df.columns

df["price"]= df["price"].str.replace("£", "")
df["price"]= df["price"].str.replace("per bottle", "")
df["price"]= df["price"].str.replace("per case", "")
df["price"]= df["price"].str.replace("each", "")

df["alcohol_percentage"]= df["alcohol_percentage"].str.replace("ABV", "")
df["alcohol_percentage"]= df["alcohol_percentage"].str.replace("%", "")
df["alcohol_percentage"]

mapping= {
    '2020/21': '2020',
    '2020/2021': '2020',
    '2020/2022': '2020',
    '2021/22': '2021',
    '2021/2022': '2021',
    '2019/20': '2019'}
df["year"]= df["year"].replace(mapping)

df.drop(columns= ["secondary_grape_varieties", "appellation", "description","per_bottle_/_case_/_each", "capacity_cl", "unit"],axis=1, inplace=True)

df.dropna(subset="region", inplace=True)

df.dropna(inplace=True)

df= df[df["year"] != "NV"]

df["year"]= df["year"].astype(int)

df["alcohol_percentage"]= df["alcohol_percentage"].astype(float)

df["price"]= df["price"].astype(float)

df

df.to_csv("wine_clean.csv", index=False)


