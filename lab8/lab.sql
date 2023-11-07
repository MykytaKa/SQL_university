CREATE TABLE IF NOT EXISTS users (
	id INT PRIMARY KEY,
	name VAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS projects (
	id INT PRIMARY KEY,
	name VAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks (
	id INT PRIMARY KEY,
	name VAR(50) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS project_tasks (
	project_id INT NOT NULL,
	task_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS project_users (
	project_id INT NOT NULL,
	user_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS assigned_users (
	task_id INT NOT NULL,
	user_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS files (
	id INT PRIMARY KEY,
	name VAR(100) NOT NULL,
	path VAR(255) NOT NULL,
	project_id INT,
	task_id INT
);