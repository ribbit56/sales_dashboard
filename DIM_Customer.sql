-- Cleansed DIM_Customer Table
-- Renaming some columns, modifying values, and performing a left join to the DIM_Geography table
SELECT 
  c.[CustomerKey] AS CustomerKey, 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c.[FirstName] AS [First Name], 
  --[MiddleName], 
  c.[LastName] AS [Last Name], 
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  -- Using CASE WHEN to modify Gender values
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.[DateFirstPurchase] AS DateFirstPurchase, 
  --[CommuteDistance]
  g.city AS [Customer City] -- Customer City comes from the Georgraphy table that was joined to
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordering in ascending order by CustomerKey
