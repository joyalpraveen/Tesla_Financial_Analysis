--create Database tesla_financial_analysis;

--use tesla_financial_analysis;

--create table tesla_yearly_data (
year int primary key,
Total_Revenue_Million int,
Automotive_Revenue_Million int,
Energy_Revenue_Million int,
Service_Revenue_Million int,
Operating_Income_Million int,
Net_Income_Million int,
Free_Cash__Flow_Million int,
Total_Deliveries_int int,
Energy_Storage_GWh float, 
Cash_And_Investment_Million int
);

--use tesla_financial_analysis;
bulk insert dbo.tesla_yearly_data
from 'C:\Users\joyal praveen.j\OneDrive\Desktop\tesla_financial_analysis\tesla_yearly_data.csv'
with
(
	firstrow = 2,
	fieldterminator = ',',
	rowterminator = '\n',
	tablock
	);

--select * from dbo.tesla_yearly_data

--select year,
Total_Revenue_Million,
lag(Total_Revenue_Million) over (order by year) as Previous_Year_Revenue,
Total_Revenue_Million - lag(Total_Revenue_Million) over (order by year) as Revenue_Growth
from dbo.tesla_yearly_data;

--select year,
Net_Income_Million,
Total_Revenue_Million,
(Net_Income_Million * 100.0 / Total_Revenue_Million) as
Profit_Margin_percentage
from dbo.tesla_yearly_data;

--select year,
Automotive_Revenue_Million,
Total_Revenue_Million,
(Automotive_Revenue_Million * 100.0 / Total_Revenue_Million) as
Automotive_Revenue_Percentage
from dbo.tesla_yearly_data;