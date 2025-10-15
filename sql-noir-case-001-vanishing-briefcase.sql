-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?
SELECT * 
FROM interviews 
JOIN suspects ON interviews.suspect_id = suspects.id 
WHERE transcript IS NOT NULL 
AND scar = 'left cheek' 
AND attire = 'trench coat';

Answer: 
suspect_id	transcript	id	name	attire	scar
183	I wasn’t going to steal it, but I did.	183	Vincent Malone	trench coat	left cheek
