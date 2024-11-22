USE cardealership; 

CREATE TABLE Dealerships (
	dealership_id INT auto_increment primary key,
    name VARCHAR(50), 
    address VARCHAR(50), 
    phone VARCHAR(12)
);

USE cardealership; 
CREATE TABLE Vehicles (
	vin_id INT primary key,
    make_year INT,
    make VARCHAR(50),
    model VARCHAR(50),
    vehicleType VARCHAR(50), 
    color VARCHAR(40), 
    odometer INT, 
    price DOUBLE
);

USE cardealership; 
CREATE TABLE Inventory (
	dealership_id INT,
	vin_id INT,
    Primary Key (dealership_id, vin_id), 
    Foreign key (dealership_id) References Dealerships (dealership_id), 
    Foreign key (vin_id) References Vehicles (vin_id)
);

USE cardealership; 
CREATE TABLE Sales_Contracts (
	sales_id INT auto_increment Primary Key,
    contractDate VARCHAR(50), 
    contractName VARCHAR(50),
    contractEmail VARCHAR(50),
    vin_id INT,
    salesContractTaxes Double,
    salesContractRecordingFee Double,
    salesContractProcessingFee Double,
    isFinanced Bool,
    Foreign Key (vin_id) References Vehicles (vin_id)
);







