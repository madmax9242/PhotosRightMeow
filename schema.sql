BEGIN;

CREATE TABLE photos  (
	id SERIAL PRIMARY KEY,
	title TEXT,
	url TEXT, 
	user_id INTEGER
);

CREATE TABLE users  (
	id SERIAL PRIMARY KEY,
	username TEXT UNIQUE NOT NULL,
	email TEXT UNIQUE NOT NULL,
	password_hash TEXT NOT NULL
);