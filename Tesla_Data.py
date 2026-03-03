import pandas as pd
data = {
    "year" : [2019, 2020, 2021, 2022, 2023, 2024, 2025],
    "Total_Revenue_Million" : [24578, 31536, 53823, 81462, 96773, 97690, 94827],
    "Automotive_Revenue_Million" : [20245, 27236, 47232, 71462, 82419, 77070, 69526],
    "Energy_Revenue_Million" : [1531, 1994, 2789, 3909, 6035, 10086, 12771],
    "Service_Revenue_Million" : [2808, 2306, 3802, 6091, 8319, 10534, 12530],
    "Operating_Income_Million" : [-69, 1994, 6523, 13656, 8819, 7076, 4355],
    "Net_Income_Million" : [-862, 721, 5519, 12556, 14997, 7091, 3794],
    "Free_Cash__Flow_Million" : [1089, 2797, 4983, 7561, 4357, 3581, 6220],
    "Total_Deliveries" : [367500, 499550, 936222, 1313851, 1808581, 1789226, 1636129],
    "Energy_Storage_GWh" : [1.6, 3.0, 4.0, 6.5, 14.7, 31.4, 46.7],
    "Cash_And_Investment_Million" : [6268, 19384, 17707, 22185, 29094, 36563, 44059]
}
df = pd.DataFrame(data)
df.to_csv("tesla_yearly_data.csv",index = False)
print("Tesla yearly dataset created successfully")