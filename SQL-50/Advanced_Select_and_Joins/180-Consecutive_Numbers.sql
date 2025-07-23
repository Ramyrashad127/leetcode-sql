SELECT DISTINCT L1.num ConsecutiveNums
Logs L3 ON L1.id = L3.id - 2FROM Logs L1
JOIN Logs L2 ON L1.id = L2.id - 1
JOIN 
WHERE L1.num = L2.num AND L2.num = L3.num;