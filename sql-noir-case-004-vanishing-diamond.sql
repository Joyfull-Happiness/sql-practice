-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?


On October 31, 1987, at a Coconut Grove mansion masked ball, Leonard Pierce was found dead in the garden. 
  Can you piece together all the clues to expose the true murderer?


--1)
SELECT * 
FROM crime_scene
WHERE date LIKE '%19871031%' AND location LIKE '%coconut%';


--(id) 75	19871031	Miami Mansion, Coconut Grove	During a masked ball, a body was found in the garden.
--Witnesses mentioned a hotel booking and suspicious phone activity.


--2)
SELECT * 
FROM witness_statements
WHERE crime_scene_id ='75';

id	crime_scene_id	witness_id	clue
83	75	37	I overheard a booking at The Grand Regency.
89	75	42	I noticed someone at the front desk discussing Room 707 for a reservation made yesterday.

  2
  

--3) 



  --4) 


  --5)


  --6) 



