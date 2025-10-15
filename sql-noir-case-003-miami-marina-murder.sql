-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?


A body was found floating near the docks of Coral Bay Marina in the early hours of August 14, 1986. 
Your job, detective, is to find the murderer and bring them to justice. This case might require the use of JOINs, 
  wildcard searches, and logical deduction. Get to work, detective.

notes: 
-- Coral Bay Marina
-- August 14, 1986. 
-- murderer


--1)
  SELECT * 
FROM crime_scene
WHERE date LIKE '%19860814%' AND location LIKE '%Marina';

id	date	location	description
43	19860814	Coral Bay Marina	The body of an unidentified man was found near the docks. 
  Two people were seen nearby: one who lives on 300ish "Ocean Drive" and 
  another whose first name ends with "ul" and his last name ends with "ez".
  
--2)
SELECT *
FROM crime_scene INNER JOIN interviews
ON crime_scene.id = interviews.id
WHERE date LIKE '%19860814%' AND location LIKE '%Marina';
(same id 43) 

--w1: 
  SELECT *
FROM person INNER JOIN interviews
ON person.id = interviews.id
WHERE person.address LIKE '%30%' OR  person.address LIKE '%Ocean Drive%';

--w2: 
SELECT *
FROM person INNER JOIN interviews
ON person.id = interviews.id
WHERE person.name LIKE '%ez' OR  person.name LIKE 'ul%';

-- person_id 189 " I overheard a conversation about a deal gone wrong." 
-- Witnesses 1: 101	Carlos Mendez	Los Ojos	Fisherman	369 Ocean Drive	101	101	I saw someone check into a hotel on August 13. The guy looked nervous.
-- Witnesses 2: 102	Raul Gutierrez	The Cobra	Nightclub Owner	45 Sunset Ave	102	58	NULL

--3) looking at interviews since Raul's is null
SELECT * FROM interviews WHERE person_id = 101 OR person_id = 102;

--notes: I heard someone checked into a hotel with "Sunset" in the name.

--4) cross surveillance and hotel checkincs

SELECT * FROM surveillance_records INNER JOIN hotel_checkins ON surveillance_records.hotel_checkin_id = hotel_checkins.id
WHERE hotel_checkins.check_in_date = 19860813 AND hotel_checkins.hotel_name LIKE '%Sunset%';
-- suspicious activity: 8	8	2	Left suddenly at 3 AM	2	27	Sunset Bay Hotel	19860813

-- person id  (surveillance)= 8
--person id (hotel_checkin_ = 8


--5 
SELECT * FROM person INNER JOIN confessions ON person.id = confessions.person_id 
WHERE person.id = '8' ;

8	Thomas Brown	The Fox	Dock Worker	234 Port Street	73	8	Alright! I did it. I was paid to make sure he never left the marina alive.





