USE luxuryhousingsales_db;

DROP TABLE IF EXISTS luxury_housing_new;

CREATE TABLE luxury_housing_new AS
SELECT
    l.booking_id,
    l.booking_status,
    l.builder_name,
    l.ticket_price,
    l.location,
    l.booking_date,
    s.configuration
FROM luxury_housing AS l
LEFT JOIN config_staging AS s
    ON l.booking_id = s.booking_id;
    
select * from luxury_housing_new;