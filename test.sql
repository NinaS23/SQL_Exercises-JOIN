--exercise 1
query = (`
SELECT 
    users.id AS id,
    users.name AS name,
    cities.name AS city 
FROM users
    JOIN cities ON users."cityId" = cities.id
    WHERE cities.name = "Rio de Janeiro";
`)

--exercise 2
query(`
SELECT 
    u1.id AS id, 
    u1.name AS writer,
    u2.name AS recipient,
    message
FROM testimonials t 
    JOIN users u1 ON t."writerId" = u1.id
    JOIN users u2 ON t."recepientId" = u2.id; 
`)

--exercise 3

query(`
SELECT
    u.id As id,
    u.name AS name,
    c.name AS courses,
    s.name AS school,
    e."endDate"
FROM educations e
    JOIN users u ON e."userId" = u.id
    JOIN courses c ON e."courseId" = c.id
    JOIN schools s ON e."schoolId" = s.id
    WHERE u.id = 30 AND e.status = "finished";
`)