INSERT INTO COUNTRIES(ID, NAME, CODE) VALUES
	(1, 'Australia', 'au'),
	(2, 'Great Britain (UK)', 'gb'),
	(3, 'United States of America', 'us');

INSERT INTO CITIES(ID, COUNTRY_ID, LATITUDE, LONGITUDE, NAME) VALUES
	(1, 1, -33.88333300, 151.21666700, 'Sydney'),
	(2, 1, -37.81666700, 144.96666700, 'Melbourne'),
	(3, 1, -27.50000000, 153.01666700, 'Brisbane'),
	(4, 1, -34.93333300, 138.60000000, 'Adelaide'),

	(5, 2, 51.50020000, -0.12620000, 'London'),
	(6, 2, 53.41666700, -3.00000000, 'Liverpool'),
	(7, 2, 53.50000000, -2.21666700, 'Manchester'),
	(8, 2, 52.20000000, 0.11666700, 'Cambridge'),


	(9, 3, 30.83833330, -87.20083330, 'New York'),
	(10, 3, 34.39583330, -106.83861110, 'San Francisco'),
	(11, 3, 42.58611110, -87.82472220, 'Chicago'),
	(12, 3, 34.05222220, -118.24277780, 'Los Angeles');
