-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?


--At Miami’s prestigious Fontainebleau Hotel charity gala, the famous “Heart of Atlantis” diamond necklace suddenly disappeared from its display.


--1)
SELECT * 
FROM crime_scene
WHERE location LIKE '%Fontainebleau Hotel%';


--id	date	location	description
--48	19870520	Fontainebleau Hotel	The Heart of Atlantis necklace disappeared. 
--Many guests were questioned but only two of them gave valuable clues. 
--One of them is a really famous actor. 
--The other one is a woman who works as a consultant for a big company and her first name ends with "an".


-- famous actor 

--qoman works consultant for a big company and her first name ends with "an"


--2)
SELECT * 
FROM witness_statements
WHERE id ='48';

--48	78	From the parking lot, I saw someone copying down the security patrol schedule
  

--3) 
SELECT *
FROM guest INNER JOIN final_interviews
ON guest.id = final_interviews.id
WHERE occupation LIKE '%actor%' OR (occupation LIKE '%consultant%' AND name LIKE '%an%');
id                                  guest_id
-- 129	Clint Eastwood	Actor	VIP-G	129	129	I was taking care of my sick mother. I would never commit murder.

-- id	name	occupation	invitation_code	id	guest_id	confession
-- 116	Vivian Nair	Consultant	VIP-R	116	116	Check my work computer logs. I would never commit such a horrible act.


  --4) 


  --5)


  --6) 



