USE text_censor_db;

CREATE temporary TABLE temp_words AS
SELECT word 
FROM eminem_song AS ems
JOIN swear_word_list 
	ON (ems.word LIKE swear_word_list.swear_word) AND (ems.word!= '/n');
SELECT *
FROM temp_words;
    
UPDATE eminem_song
SET word = REPLACE(word, word, REPEAT('*', LENGTH(word)))
WHERE word IN (SELECT * FROM temp_words);



