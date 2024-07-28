select DISTINCT(name), noc, year from olympics_athletes_events
where year = 1992 and year !=1994 and noc= 'NOR';