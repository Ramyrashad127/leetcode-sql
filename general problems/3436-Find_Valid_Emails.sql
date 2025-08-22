SELECT * FROM Users WHERE email REGEXP '^[A-Za-z0-9_]+@[A-Za-z]{1,}\\.com$'
ORDER BY user_id;