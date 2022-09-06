SELECT u.UserName, a.Distance FROM Users AS u
INNER JOIN Activity AS a ON u.Id = a.UserId
ORDER BY Distance;

SELECT u.UserName, a.Distance FROM Users AS u
INNER JOIN Activity AS a ON u.Id = a.UserId
ORDER BY Distance DESC;

SELECT * FROM Activity
WHERE
Distance > 10;

SELECT u.UserName, a.Distance FROM Users AS u
INNER JOIN Activity AS a ON u.Id = a.UserId
WHERE Distance < 2;

SELECT u.UserName, m.TotalTime FROM Users AS u
INNER JOIN Marathon AS m ON u.Id = m.UserId
WHERE TotalTime > '01:00:00';

SELECT FirstName, LastName FROM Users
WHERE
LastName LIKE 'Q%';

SELECT TOP(3) FirstName, LastName FROM Users;

SELECT TOP(1) u.UserName, m.TotalDistance FROM Users as u
INNER JOIN Marathon as m ON u.Id = m.UserId
ORDER BY TotalDistance DESC;

SELECT TOP(1) u.UserName, m.TotalTime FROM Users as u
INNER JOIN Marathon as m ON u.Id = m.UserId
ORDER BY TotalTime;

SELECT COUNT(u.Id) as 'Nr.'
FROM Users as u
INNER JOIN Marathon as m
ON u.Id = m.UserId
WHERE m.TotalDistance > 5;