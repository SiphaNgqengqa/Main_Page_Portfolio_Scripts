--Cleaned DimProduct table

SELECT  [ProductKey]
      ,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as [Product Name]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      , ps.EnglishProductSubcategoryName as [Sub Category] --Joined in from DimProductCategory
		,pc.EnglishProductCategoryName as [Product Category] --oined in from DimProductSubCategory

      ,[Color] as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as [Product Size]
     --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] as [Product Line]
     -- ,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] as [Product Model Name]
      --,[LargePhoto]
      ,[EnglishDescription] as [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,
	 ISNULL(p.Status, 'Outdated') as [Product Status]
	 
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join [dbo].[DimProductSubcategory] as ps ON ps.ProductCategoryKey = p.ProductSubcategoryKey
  left join [dbo].[DimProductCategory] as pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
