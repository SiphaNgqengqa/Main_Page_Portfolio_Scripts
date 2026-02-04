--/Cleaned DimDate table--/

SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date 
  --,[DayNumberOfWeek]
, 
  [EnglishDayNameOfWeek] As Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] As WeekNr, 
  [EnglishMonthName] as Month ,
  LEFT([EnglishMonthName],3) as MonthShort
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] as MonthNr, 
  [CalendarQuarter] as Quater, 
  [CalendarYear] as Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
Where 
  CalendarYear >= 2019
