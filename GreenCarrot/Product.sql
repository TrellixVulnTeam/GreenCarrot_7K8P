﻿CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[Name] VARCHAR(100) NOT NULL,
	[Sku] VARCHAR(250) NOT NULL,
	[Description] VARCHAR(250) NOT NULL,
	[Price] DECIMAL(19, 4) NOT NULL,
	[Quantity] INT NOT NULL, 
    [Available] BIT NOT NULL
)
