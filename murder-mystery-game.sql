-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran
--   2. Any notes or insights as SQL comments
--   3. Your final conclusion: who did it?

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- below showed all transcrip out of order 
Select transcript FROM interview
-- below showed all transcript starting with chapter 4
SELECT transcript FROM interview ORDER BY person_id; 

----FINALLY FIGURED out the report for SQL city:
SELECT date, type, description, city 
FROM crime_scene_report 
WHERE date = '20180115' AND type='murder'AND city = 'SQL City'; 


--in "Northwestern Dr" and 2 witness 
-- name Annable  "Franklin Ave" 
SELECT * FROM person
WHERE name LIKE '%Annabel%' AND address_street_name = 'Franklin Ave';

-- info found: 16371 Annabel Miller liscnece 490173, 318771143 address_street_name = 'Franklin Ave'


              
