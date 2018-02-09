-- p0 = [4/1/2017 12:00:00 AM]
-- p1 = [12/15/2017 12:00:00 AM]
-- p2 = [juul]
tweets1 = SELECT t0.createdAt, t0.id, t0.isRetweet, t0.text, t0.userId
FROM tweets AS t0
WHERE (((t0.createdAt > @p0) AND (t0.createdAt < @p1)) AND (LOWER(t0.text) LIKE CONCAT('%',@p2,'%')))


-- p0 = [4/1/2017 12:00:00 AM]
-- p1 = [12/15/2017 12:00:00 AM]
-- p2 = [juul]
tweets2 = SELECT t0.createdAt, t0.id, t0.isRetweet, t0.text, t0.userId
FROM tweets255 AS t0
WHERE (((t0.createdAt > @p0) AND (t0.createdAt < @p1)) AND (LOWER(t0.text) LIKE CONCAT('%',@p2,'%')))

result = tweets1 UNION ALL tweets2;
