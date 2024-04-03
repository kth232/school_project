CREATE DATABASE IF NOT EXISTS mysns
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE mysns;

CREATE TABLE IF NOT EXISTS user(
	id VARCHAR(128) PRIMARY KEY, -- "email"
	-- password VARCHAR(32),
	-- name VARCHAR(32),
	-- ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	jsonstr VARCHAR(1024)
);

CREATE TABLE IF NOT EXISTS feed(
	no INT UNSIGNED PRIMARY KEY, -- AUTO_INCREMENT
	id VARCHAR(128), -- "email"
	-- content VARCHAR(4096),
	-- images VARCHAR(1024), -- "url"
	-- ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	jsonstr VARCHAR(1024)
);

CREATE TABLE IF NOT EXISTS friend(
	id VARCHAR(128), -- "email"
	frid VARCHAR(128), -- "email“
	INDEX idx1(id)
);