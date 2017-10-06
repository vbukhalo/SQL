CREATE TABLE Airport(
	Airport_ABR VARCHAR(3),
	Airport_ID VARCHAR(5),
	Airport_SEQ_ID VARCHAR(7)
);

CREATE TABLE Carrier_Entity(
	Carrier_Entity VARCHAR(10)
);

CREATE TABLE Carrier_Group(
	Carrier_Group VARCHAR(1),
	New_Carrier_Group VARCHAR(1)
);

CREATE TABLE Carrier_Region(
	Region VARCHAR(20)
);

CREATE TABLE Carrier(
	Carrier_ID Int,
	Carrier VARCHAR(5),
	Carrier_Name VARCHAR(100)
);

CREATE TABLE City(
	City_Name VARCHAR(30),
	City_Market_ID Int
);

CREATE TABLE Distance(
	Distance Int,
	Distance_Group Int
);

CREATE TABLE Flight(
	Origin VARCHAR(3),
	Desintation VARCHAR(3),
	Passengers Int,
	Freight Int,
	Mail Int, 
	Flight_Class VARCHAR(1)
);

CREATE TABLE State(
	State VARCHAR(20),
	State_ABR VARCHAR(2),
	State_FIPS INt
);

CREATE TABLE Time(
	Year Int,
	Quarter Int,
	Month Int
);

CREATE TABLE World_Area_Code(
	World_Area_Code Int
);
