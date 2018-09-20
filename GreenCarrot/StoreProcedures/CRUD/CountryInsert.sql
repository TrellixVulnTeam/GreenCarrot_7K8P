﻿CREATE PROCEDURE [dbo].[CountryInsert]
	@Name VARCHAR(100)
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[Country]
	([Name], [Created])
SELECT
	@Name
	,@Created

-- Begin Return Select <- do not remove
SELECT
	[Id]
	,[Name]
	,[Created]
FROM
	[dbo].[Country]
WHERE  [Id] = SCOPE_IDENTITY()
-- End Return Select <- do not remove

COMMIT
RETURN SCOPE_IDENTITY()
GO