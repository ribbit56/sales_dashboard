-- Cleansed DIM_Date Table
-- dropping unneeded columns and renaming others

SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date,
  --,[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear], 
  [WeekNumberOfYear] AS WeekNr, 
  [EnglishMonthName] AS Month,
  LEFT([EnglishMonthName],3) AS MonthShort, -- Get the first three letters of "Month" and create a MonthShort column
  --,[SpanishMonthName]
  --,[FrenchMonthName], 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear >= 2021 -- In this scenario, the customers are only interested in sales data going back two years
