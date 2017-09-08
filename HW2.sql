Vladimir Bukhalo
Homework 1

--2. Create Countries table
CREATE TABLE Countries(
			name VARCHAR(20),
			latitude INT,
			longitude INT,
			area INT,
			population INT,
			gdp INT,
			gdpYear INT
);

--4a. Create Borders table
CREATE TABLE Borders(
			name VARCHAR(20),
			borderingcountries VARCHAR(20)
);

--4b. Populate Countries table			
INSERT INTO Countries (name, latitude, longitude, area, population, gdp, gdpYear)
VALUES
			('Germany', 5100, 900, 357022, 80594017, 3979, 2016),
			('Netherlands', 5230, 545, 41543, 17084719,870.8, 2016), 
			('Belgium', 5050, 400, 30528, 11491346, 508.6, 2016),
			('Luxembourg', 4945, 610, 2586, 594130, 58.74, 2016),
			('Poland', 5200, 2000, 312685, 38476269, 1052, 2016),
			('Czech Republic', 4945, 1530, 78867, 10674723, 350.9, 2016), 
			('Austria', 4720, 1320, 83871, 8754413, 416.6, 2016),
			('France', 4600, 200, 643801, 67106161, 2699, 2016),
			('Switzerland', 4700, 800, 41277, 8236303, 496.3, 2016);

--4b. Populate Borders table
INSERT INTO Borders (name, borderingcountries)
VALUES
			('Germany', 'Netherlands'),
			('Germany', 'Belgium'),
			('Germany', 'Luxembourg'),
			('Germany', 'Poland'),
			('Germany', 'Czech Republic'),
			('Germany', 'Austira'),
			('Germany', 'France'),
			('Germany', 'Switzerland'),
			('Netherlands', 'Belgium'),
			('Netherlands', 'Germany'),
			('Belgium', 'France'),
			('Belgium', 'Germany'),
			('Belgium', 'Luxembourg'),
			('Belgium', 'Netherlands'),			
			('Luxembourg', 'Belgium'),
			('Luxembourg', 'France'),
			('Luxembourg', 'Germany'),
			('Poland', 'Czech Republic'),
			('Poland', 'Germany'),
			('Czech Republic', 'Austria'),
			('Czech Republic', 'Germany'),
			('Czech Republic', 'Poland'),
			('Austria', 'Czech Republic'),
			('Austria', 'Germany'),
			('Austria', 'Switzerland'),
			('France', 'Belgium'),
			('France', 'Germany'),
			('France', 'Luxembourg'),
			('France', 'Switzerland'),
			('Switzerland', 'Austria'),
			('Switzerland', 'France'),
			('Switzerland', 'Germany');

--4c. Display all countries bordering Germany
SELECT name,borderingcountries FROM borders
	WHERE name = 'Germany';

--4d. Display all countries with population > 35 million
SELECT name, population FROM Countries
	WHERE population > 35000000;

--4e. Display all countries with population > 35 million AND border Germany
SELECT borderingcountries FROM borders
	INNER JOIN countries c on c.name = borderingcountries
	WHERE borders.name = 'Germany' and c.population > 35000000;
