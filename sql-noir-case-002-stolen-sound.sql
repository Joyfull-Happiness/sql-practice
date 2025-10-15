-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?


--1. Retrieve the crime scene report for the record theft using the known date and location.
--July 15, 1983, 
--1980s Los Angeles, the West Hollywood Records

id	date	type	location	description
65	19830715	theft	West Hollywood Records	A prized vinyl record was stolen from the store during a busy evening.

--2. Retrieve witness records linked to that crime scene to obtain their clues.
  id	crime_scene_id	clue
28	65	I saw a man wearing a red bandana rushing out of the store.
75	65	The main thing I remember is that he had a distinctive gold watch on his wrist.

  
3.
Use the clues from the witnesses to find the suspect in the suspects table.
id	name	bandana_color	accessory
35	Tony Ramirez	red	gold watch
44	Mickey Rivera	red	gold watch
97	Rico Delgado	red	gold watch

  
4.
Retrieve the suspect's interview transcript to confirm the confession.
