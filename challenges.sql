-- Challenge One: This code does not execute properly. Try to figure out why.
-- Challenge Source: https://www.codewars.com/kata/50654ddff44f800200000004

-- Starter Code
-- SELECT price + amount AS total FROM items

-- Solution
SELECT price * amount AS total FROM items


-- Challenge Two: Trolls are attacking your comment section! A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat. Your task is to write a function that takes a string and return a new string with all vowels removed. For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!". Note: for this kata y isn't considered a vowel.
-- Challenge Source: https://www.codewars.com/kata/52fba66badcd10859f00097e

SELECT str, translate(str, 'aeiouAEIOU', '') AS res FROM disemvowel;