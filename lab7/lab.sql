CREATE TABLE IF NOT EXISTS news (
	id INT PRIMARY KEY,
	category_id INT NOT NULL,
	title VARCHAR(255) NOT NULL,
	text VARCHAR(1024) NOT NULL
);

CREATE TABLE IF NOT EXISTS categories (
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS comments (
	id INT PRIMARY KEY,
	news_id INT NOT NULL,
	commenter_name VARCHAR(255) NOT NULL,
	text VARCHAR(1024) NOT NULL
);

CREATE TABLE IF NOT EXISTS ratings (
	id INT PRIMARY KEY,
	news_id INT NOT NULL UNIQUE,
	user_ip VARCHAR(255) NOT NULL UNIQUE,
	value INT(1,5) NOT NULL
);