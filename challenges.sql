-- Challenge One: This code does not execute properly. Try to figure out why.
-- Challenge Source: https://www.codewars.com/kata/50654ddff44f800200000004

-- Starter Code
-- SELECT price + amount AS total FROM items

-- Solution
SELECT price * amount AS total FROM items


-- Challenge Two: Trolls are attacking your comment section! A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat. Your task is to write a function that takes a string and return a new string with all vowels removed. For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!". Note: for this kata y isn't considered a vowel.
-- Challenge Source: https://www.codewars.com/kata/52fba66badcd10859f00097e

SELECT str, translate(str, 'aeiouAEIOU', '') AS res FROM disemvowel;

-- Challenge Three: Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e. You need to return the nth triangular number. You should return 0 for out of range values.
-- Challenge Source: https://www.codewars.com/kata/525e5a1cb735154b320002c8

SELECT n, 
  CASE
    WHEN n <= 0 THEN 0
    ELSE (CAST(n AS INT) * (n + 1)) / 2
  END AS res
  FROM triangular;

-- Challenge Four: For this challenge you need to create a simple SELECT statement that will return all columns from the people table, and join to the toys table so that you can return the COUNT of the toys.
-- Challenge Source: https://www.codewars.com/kata/580918e24a85b05ad000010c

SELECT
  p.id,
  p.name,
  COUNT(t.name) AS toy_count
FROM people AS p 
LEFT JOIN toys AS t
ON p.id = t.people_id
GROUP BY p.id, p.name;