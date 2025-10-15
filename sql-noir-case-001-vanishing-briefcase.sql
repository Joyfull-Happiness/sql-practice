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
