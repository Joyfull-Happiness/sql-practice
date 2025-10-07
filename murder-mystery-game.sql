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

Part 2: 
  -- 2 witnesses: 
    --in "Northwestern Dr"
    -- name Annable  "Franklin Ave" 
SELECT * FROM person
WHERE name LIKE '%Annabel%' AND address_street_name = 'Franklin Ave';

-- info found: 16371 Annabel Miller liscnece 490173, 318771143 address_street_name = 'Franklin Ave'

Part 3:
-- info found: 16371 Annabel Miller liscnece 490173, 318771143 address_street_name = 'Franklin Ave'
SELECT * FROM interview
WHERE person_id = '16371';
--info found:I saw the murder happen, and I recognized the killer from my gym when I was working out last 
--week on January the 9th.

Part 4:
  maybe we can look who else was there while annable was working out based off her member id 
SELECT * FROM get_fit_now_member WHERE name LIKE '%Annabel%';

---INFO found: id: 90081 and person_id 16371

--Part 5: 
SELECT * FROM get_fit_now_check_in WHERE membership_id = '90081';

---INFO found: id: 90081 checkin date 20180109 check_in_time 16900 check_out_time

--Part 6 see all ppl who were there that day : 
SELECT * FROM get_fit_now_check_in 
WHERE check_in_date = '20180109' AND check_in_time = '1600' OR check_out_time = '1700' 

-- info found: members who were there: 
-- membership_id	check_in_date	check_in_time	check_out_time
--48Z7A	20180109	1600	1730
--48Z55	20180109	1530	1700
--90081	20180109	1600	1700 <Annabel>

Par 7: 
--Part 7 see all ppl who were there that day : 
SELECT * FROM get_fit_now_member
WHERE id = '48Z7A' OR id = '48Z55'; 

-- info found: 
--id	person_id	name	membership_start_date	membership_status
--48Z55	67318	Jeremy Bowers	20160101	gold
--48Z7A	28819	Joe Germuska	20160305	gold









