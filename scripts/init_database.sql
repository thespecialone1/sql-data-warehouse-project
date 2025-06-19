/*
 =====================================================
 CREATE DATABASE AND SCHEMAS 
 =====================================================
 Ssript Purpose:
 	This script creates a new database called 'DataWarehouse' after checking if it 
 	already exists. If the database alredy exists, it is dropped and recreated. Additionally, 
 	the script sets up three schemas within the database: 'bronze', 'silver' and 'gold'.
 
Warning: 
	Running this script will drop the entire 'DataWarehouse' database if it already exists. 
	All data will be deleted. Proceed with caution and ensure you have proper backups before runnign this script.
*/

Use master;
GO
-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

-- SELECT name FROM sys.databases;

Use DataWarehouse;
GO
-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

-- SELECT name FROM sys.schemas;

