# Write your MySQL query statement below
-- tweet is invalid if content > 15
-- used length func to get the length of string in numbers

select tweet_id from Tweets
where LENGTH(content) > 15;