--exercicio 1
query = (`
SELECT 
    users.id AS id,
    users.name AS name,
    cities.name AS city 
FROM users
    JOIN cities ON users."cityId" = cities.id
    WHERE cities.name = "Rio de Janeiro";
`)

--exercicio 2
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