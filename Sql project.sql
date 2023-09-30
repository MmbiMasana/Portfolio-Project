/*CREATE DATABASE Power_Lifting
USE Power_Lifting */

--Viweing tables 
SELECT *
FROM meets 
order by meetID asc;

SELECT *
FROM openpowerlifting
order by meetID asc;


--Which years did they have competitions
SELECT DISTINCT YEAR(Date) AS Year
FROM meets
ORDER BY Year;


--The total number of females VS males 
WITH cte_gender AS
(SELECT COUNT(Sex) AS Male
FROM openpowerlifting OPL
WHERE Sex = 'M')

SELECT Male, COUNT(Sex) AS Female
FROM cte_gender, openpowerlifting
WHERE Sex = 'F'
GROUP BY Male;


--How many people participated each year
SELECT  FORMAT(DATE, 'yyyy-MM-dd') AS Year, count(OPL.MeetID) AS Participants 
FROM meets M
JOIN openpowerlifting OPL 
	ON M.MeetID = OPL.MeetID
GROUP BY Date;


-- Which countries participated
SELECT DISTINCT MeetCountry
FROM meets M
ORDER BY MeetCountry ASC;


-- Where do the contestants come from?
SELECT  [Name], MeetCountry 
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
ORDER BY MeetCountry;


--The number of people from each counrty
SELECT DISTINCT MeetCountry, COUNT(Name) AS NO_OF_CONTESTANTS
FROM meets M
 left JOIN openpowerlifting OPL
	ON M.MeetID = OPL.MeetID
GROUP BY MeetCountry
ORDER BY MeetCountry ASC;

--Which country had the most females
SELECT  MeetCountry, COUNT(Sex) AS Most_females
FROM meets M
LEFT JOIN openpowerlifting OPL
	ON M.MeetID = OPL.MeetID
WHERE Sex = 'F'
GROUP BY MeetCountry
ORDER BY Most_females DESC;


--Which country had the most males
SELECT  MeetCountry, COUNT(Sex) AS Most_males
FROM meets M
LEFT JOIN openpowerlifting OPL
	ON M.MeetID = OPL.MeetID
WHERE Sex = 'M'
GROUP BY MeetCountry
ORDER BY Most_males DESC;


--What are the different kinds of divisions
SELECT DISTINCT Division
FROM openpowerlifting OPL
ORDER BY Division ASC;


--How many contestants for each division
SELECT Division, COUNT(MeetID)
FROM openpowerlifting OPL
GROUP BY Division
ORDER BY Division ASC;


--How many contestants got disqualified
SELECT COUNT([Name]) AS Disqualified
FROM openpowerlifting OPL
WHERE Place IS NULL;


--To find the best overall lifter for each year
WITH cte_1974 AS
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1974
ORDER BY Wilks desc),

cte_1975 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1975
ORDER BY Wilks desc),

cte_1976 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1976
ORDER BY Wilks desc),

cte_1977 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1977
ORDER BY Wilks desc),

cte_1978 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1978
ORDER BY Wilks desc),

cte_1979 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1979
ORDER BY Wilks desc),

cte_1980 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1980
ORDER BY Wilks desc),

cte_1981 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1981
ORDER BY Wilks desc),

cte_1982 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1982
ORDER BY Wilks desc),

cte_1983 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1983
ORDER BY Wilks desc),

cte_1984 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1984
ORDER BY Wilks desc),

cte_1985 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1985
ORDER BY Wilks desc),

cte_1986 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1986
ORDER BY Wilks desc),

cte_1987 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1987
ORDER BY Wilks desc),

cte_1988 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1988
ORDER BY Wilks desc),

cte_1989 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1989
ORDER BY Wilks desc), 

cte_1990 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1990
ORDER BY Wilks desc),

cte_1991 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1991
ORDER BY Wilks desc),

cte_1992 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1992
ORDER BY Wilks desc),

cte_1993 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1993
ORDER BY Wilks desc),

cte_1994 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1994
ORDER BY Wilks desc),

cte_1995 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1995
ORDER BY Wilks desc),

cte_1996 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1996
ORDER BY Wilks desc),

cte_1997 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1997
ORDER BY Wilks desc),

cte_1998 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1998
ORDER BY Wilks desc),

cte_1999 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 1999
ORDER BY Wilks desc),

cte_2000 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2000
ORDER BY Wilks desc),

cte_2001 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2001
ORDER BY Wilks desc),

cte_2002 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2002
ORDER BY Wilks desc),

cte_2003 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2003
ORDER BY Wilks desc),

cte_2004 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2004
ORDER BY Wilks desc),

cte_2005 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2005
ORDER BY Wilks desc),

cte_2006 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2006
ORDER BY Wilks desc),

cte_2007 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2007
ORDER BY Wilks desc),

cte_2008 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2008
ORDER BY Wilks desc),

cte_2009 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2009
ORDER BY Wilks desc),

cte_2010 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2010
ORDER BY Wilks desc),

cte_2011 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2011
ORDER BY Wilks desc),

cte_2012 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2012
ORDER BY Wilks desc),

cte_2013 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2013
ORDER BY Wilks desc),

cte_2014 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2014
ORDER BY Wilks desc),

cte_2015 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2015
ORDER BY Wilks desc),

cte_2016 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2016
ORDER BY Wilks desc),

cte_2017 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2017
ORDER BY Wilks desc),

cte_2018 AS 
(SELECT top 1 year(DATE) as Year,Name, Wilks
FROM openpowerlifting OPL
JOIN meets M
	ON OPL.MeetID = M.MeetID
where Year(date) = 2018
ORDER BY Wilks desc)

SELECT * FROM cte_1974
UNION ALL
SELECT * FROM cte_1975
UNION ALL
SELECT * FROM cte_1976
UNION ALL
SELECT * FROM cte_1977
UNION ALL
SELECT * FROM cte_1978
UNION ALL
SELECT * FROM cte_1979
UNION ALL
SELECT * FROM cte_1980
UNION ALL
SELECT * FROM cte_1981
UNION ALL
SELECT * FROM cte_1982
UNION ALL
SELECT * FROM cte_1983
UNION ALL
SELECT * FROM cte_1984
UNION ALL
SELECT * FROM cte_1985
UNION ALL
SELECT * FROM cte_1986
UNION ALL
SELECT * FROM cte_1987
UNION ALL
SELECT * FROM cte_1988
UNION ALL
SELECT * FROM cte_1989
UNION ALL
SELECT * FROM cte_1990
UNION ALL
SELECT * FROM cte_1991
UNION ALL
SELECT * FROM cte_1992
UNION ALL
SELECT * FROM cte_1993
UNION ALL
SELECT * FROM cte_1994
UNION ALL
SELECT * FROM cte_1995
UNION ALL
SELECT * FROM cte_1996
UNION ALL
SELECT * FROM cte_1997
UNION ALL
SELECT * FROM cte_1998
UNION ALL
SELECT * FROM cte_1999
UNION ALL
SELECT * FROM cte_2000
UNION ALL
SELECT * FROM cte_2001
UNION ALL
SELECT * FROM cte_2002
UNION ALL
SELECT * FROM cte_2003
UNION ALL
SELECT * FROM cte_2004
UNION ALL
SELECT * FROM cte_2005
UNION ALL
SELECT * FROM cte_2006
UNION ALL
SELECT * FROM cte_2007
UNION ALL
SELECT * FROM cte_2008
UNION ALL
SELECT * FROM cte_2009
UNION ALL
SELECT * FROM cte_2010
UNION ALL
SELECT * FROM cte_2011
UNION ALL
SELECT * FROM cte_2012
UNION ALL
SELECT * FROM cte_2013
UNION ALL
SELECT * FROM cte_2014
UNION ALL
SELECT * FROM cte_2015
UNION ALL
SELECT * FROM cte_2016
UNION ALL
SELECT * FROM cte_2017
UNION ALL
SELECT * FROM cte_2018










