CREATE TABLE Countries(
			name VARCHAR(20),
			latitude INT,
			longitude INT,
			area INT,
			population INT,
			gdp INT,
			gdpYear
);

CREATE TABLE Borders(
			name VARCHAR(20) PRIMARY KEY REFERENCES Countries,
			border1 VARCHAR(20),
			border2 VARCHAR(20),
			border3 VARCHAR(20),
			border4 VARCHAR(20),
			border5 VARCHAR(20),
			border6 VARCHAR(20),
			border7 VARCHAR(20),
			border8 VARCHAR(20)
);
			
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

INSERT INTO Borders (name, border1, border2, border3, border4, border5, border6, border7, border8, border9)
VALUES
			('Germany','Netherlands', 'Belgium', 'Luxembourg', 'Poland', 'Czech Republic', 'Austria','France','Switzerland'),
			('Netherlands', 'Belgium', 'Germany'),
			('Belgium', 'France', 'Germany', 'Luxembourg', 'Netherlands'),
			('Luxembourg', 'Belgium', 'France', 'Germany'),
			('Poland', 'Czech Republic', 'Germany'),
			('Czech Republic', 'Austria', 'Germany', 'Poland'),
			('Austria', 'Czech Republic', 'Germany', 'Switzerland'),
			('France', 'Belgium', 'Germany', 'Luxembourg', 'Switzerland'),
			('Switzerland', 'Austria', 'France', 'Germany');			

SELECT * FROM BORDERS 
	WHERE name = 'Germany';

SELECT name, population FROM Countries
	WHERE population > 35000000;

SELECT countries.name, countries.population
	FROM countries, borders
	WHERE countries.population > 35000000 
	AND borders.name = 'Germany';