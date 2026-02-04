--Cleaned DimCustomer's table--
SELECT 
  [CustomerKey] as [Customer Key] 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  [FirstName] as [First Name] 
  --,[MiddleName]
  , 
  [LastName] as [Last name], 
  [FirstName] + ' ' + [LastName] as [Full Name] --Combining the fisrtname and lastname
  --,[NameStyle]
  -- ,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  case[Gender] WHEN 'M' then 'Male' when 'F' then 'Female' End AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  -- ,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  [DateFirstPurchase] 
  --,[CommuteDistance]
  , 
  g.City as [Customer City] 
FROM 
  DimCustomer as c 
  LEFT JOIN DimGeography as g ON g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc