\COPY Airport(Airport_ABR,Airport_ID,Airport_SEQ_ID) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Airport.csv' DELIMITER ',' CSV HEADER;

\COPY Carrier_Entity(Carrier_Entity) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Carrier Entity.csv' DELIMITER ',' CSV HEADER;

\COPY Carrier_Group(Carrier_Group, New_Carrier_Group) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Carrier Group.csv' DELIMITER ',' CSV HEADER;

\COPY Carrier_Region(Region) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Carrier Region.csv' DELIMITER ',' CSV HEADER;

\COPY Carrier(Carrier_ID, Carrier, Carrier_Name) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Carrier.csv' DELIMITER ',' CSV HEADER;

\COPY City(City_Name, City_Market_ID) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\City.csv' DELIMITER ',' CSV HEADER;

\COPY Distance(Distance, Distance_Group) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Distance.csv' DELIMITER ',' CSV HEADER;

\COPY Flight(Origin, Desintation, Passengers, Freight, Mail, Flight_Class) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Flight.csv' DELIMITER ',' CSV HEADER;

\COPY State(State, State_ABR, State_FIPS) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\State.csv' DELIMITER ',' CSV HEADER;

\COPY Time(Year, Quarter, Month) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\Time.csv' DELIMITER ',' CSV HEADER;

\COPY World_Area_Code(World_Area_Code) FROM 'C:\Users\Vlad\Documents\Metro\Fall 2017\Databases\HW3\World Area Code.csv' DELIMITER ',' CSV HEADER;



