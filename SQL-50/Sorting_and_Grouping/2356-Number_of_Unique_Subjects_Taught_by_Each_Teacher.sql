SELECT T.teacher_id, COUNT(DISTINCT T.subject_id) cnt FROM Teacher T
GROUP BY T.teacher_id;