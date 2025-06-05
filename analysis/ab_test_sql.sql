USE ab_test_db;
SHOW TABLES;
SELECT * FROM ab_data LIMIT 10;

#View Table Structure:
DESCRIBE ab_data;

#Check for Invalid Test Design by ensuring each user only saw one landing page:
SELECT user_id
FROM ab_data
GROUP BY user_id
HAVING COUNT(DISTINCT landing_page) > 1;

SET SQL_SAFE_UPDATES = 0;
#Delete Users having both landing pages:
DELETE FROM ab_data
WHERE user_id IN (
    SELECT user_id
    FROM (
        SELECT user_id
        FROM ab_data
        GROUP BY user_id
        HAVING COUNT(DISTINCT landing_page) > 1
    ) AS sub
);

#Confirm cleaned dataset:
SELECT COUNT(user_id) AS total_users,
       COUNT(DISTINCT user_id) AS unique_users,
       COUNT(DISTINCT landing_page) AS landing_pages_per_user
FROM ab_data
GROUP BY user_id
HAVING COUNT(DISTINCT landing_page) > 1;

#Ensure data is balanced between control and treatment groups:
SELECT `group`, COUNT(*) AS users_in_group
FROM ab_data
GROUP BY `group`;

#Check Conversion Rates by Group:
SELECT 
    `group`,
    COUNT(*) AS total_users,
    SUM(converted) AS total_converted,
    ROUND(SUM(converted) / COUNT(*) * 100, 2) AS conversion_rate_percent
FROM ab_data
GROUP BY `group`;



