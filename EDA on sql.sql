USE cyber_security;
DESC cyber_security;

SELECT * FROM cyber_security;
SELECT COUNT(*) from cyber_security;

-- Removing null values
DELETE FROM cyber_security WHERE `Start time` IS NULL OR `Start time` = '';
DELETE FROM cyber_security WHERE `Last time` IS NULL OR `Last time` = '';
DELETE FROM cyber_security WHERE `Attack category` IS NULL OR `Attack category` = '';
DELETE FROM cyber_security WHERE `Attack subcategory` IS NULL OR `Attack subcategory` = '';
DELETE FROM cyber_security WHERE `Protocol` IS NULL OR `Protocol` = '';
DELETE FROM cyber_security WHERE `Source Port` IS NULL OR `Source Port` = '';
DELETE FROM cyber_security WHERE `Destination Port` IS NULL OR `Destination Port` = '';
DELETE FROM cyber_security WHERE `Attack Name` IS NULL OR `Attack Name` = '';

-- Top 5 Attack category
SELECT DISTINCT(`Attack category`) FROM cyber_security;
SELECT COUNT(*) as Top5,  `Attack category` FROM cyber_security GROUP BY `Attack category` 
ORDER BY COUNT(*) DESC LIMIT 5;

-- Bottom 5 Attack category
SELECT COUNT(*) as Bottom5,  `Attack category` FROM cyber_security GROUP BY `Attack category` 
ORDER BY COUNT(*) ASC LIMIT 5;

-- Top 5 Attack subcategory
SELECT DISTINCT(`Attack subcategory`) FROM cyber_security;
SELECT COUNT(*) as Top5,  `Attack subcategory` FROM cyber_security GROUP BY `Attack subcategory` 
ORDER BY COUNT(*) DESC LIMIT 5;

-- Bottom 5 Attack subcategory
SELECT COUNT(*) as Top5,  `Attack subcategory` FROM cyber_security GROUP BY `Attack subcategory` 
ORDER BY COUNT(*) ASC LIMIT 5;

-- Top 5 Source IP with attack category counts
SELECT COUNT(`Attack category`) as Top5,`Source IP`FROM cyber_security GROUP BY `Source IP` 
ORDER BY COUNT(`Attack category`) DESC LIMIT 5;

-- Top 5 Destination IP with attack category counts
SELECT COUNT(`Attack category`) as Top5,`Destination IP`FROM cyber_security GROUP BY `Destination IP`
ORDER BY COUNT(`Attack category`) DESC LIMIT 5;







