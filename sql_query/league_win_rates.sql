DROP TABLE league_winrates

CREATE TABLE league_winrates (
id INT PRIMARY KEY,
rank VARCHAR(30),
champion VARCHAR(30),
role VARCHAR(30),
win_rate VARCHAR(30)
);

SELECT * FROM league_winrates

SELECT * FROM league_winrates
WHERE champion = 'Rumble'
