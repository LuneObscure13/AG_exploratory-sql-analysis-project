-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here; 
SELECT * FROM observations LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT region_id FROM observations;

-- MISSION 3
-- Your query here;
SELECT COUNT (DISTINCT species_id) FROM observations;

-- MISSION 4
-- Your query here;
SELECT COUNT (*) FROM observations WHERE region_id=2;

-- MISSION 5
-- Your query here;
SELECT COUNT(*) FROM observations WHERE observation_date= '1998-08-08'

-- MISSION 6
-- Your query here;
SELECT region_id, COUNT(*) AS num_observations FROM observations GROUP BY region_id ORDER BY num_observations DESC;

-- MISSION 7
-- Your query here;
SELECT species_id, COUNT(*) AS frequent_species FROM observations GROUP BY species_id ORDER BY frequent_species DESC LIMIT 5;


-- MISSION 8
-- Your query here;
SELECT species_id, COUNT(*) AS menoscincoespecies FROM observations GROUP BY species_id HAVING COUNT(*) < 5 ORDER BY menoscincoespecies ASC;

-- MISSION 9
-- Your query here;
SELECT observer, COUNT(*) AS num_observers FROM observations GROUP BY observer;

-- MISSION 10
-- Your query here;
SELECT * FROM observations JOIN regions ON observations.region_id=regions.id;

-- MISSION 11
-- Your query here;
SELECT * FROM observations JOIN species ON observation.species_id=species.id;

-- MISSION 12
-- Your query here;
SELECT region_id, species_id, COUNT (*) AS most_observed FROM observations GROUP BY region_id, species_id SELECT MAX(COUNT(*))





