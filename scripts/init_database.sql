/*

...

Create Database and Schemas
...


Script Purpose:
      This script creates a new database named 'Datawarehouse' after checking if it already exsist it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING:

Running this script will drop the entire 'Datawarehouse' database if it exists. All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;

GO

Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')

BEGIN
   ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataWarehouse;
END:
GO


 -- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA Gold;
GO
