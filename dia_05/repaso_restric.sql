-- ############################
-- ### EJEMPLO DE GENERATED ###
-- ############################
CREATE database gen;
USE gen;

CREATE table triangle(
sideA double,
sideB double,
sideC double as (SQRT(sideA * sideA + sideB * sideB))
);

insert into triangle(sideA,sideB) VALUES (1.4,1.8);
SELECT * from triangle;

SELECT
    COLUMN_COMMENT
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'gen' AND
    TABLE_NAME = 'triangle' AND
    COLUMN_NAME = 'sideC';
-- Desarrollado por Daniela Forero / ID.1.142.714.225
