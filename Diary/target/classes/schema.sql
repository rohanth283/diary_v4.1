DROP TABLE IF EXISTS diary_entries;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id IDENTITY PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE diary_entries (
    id IDENTITY PRIMARY KEY,
    user_id BIGINT NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    pinned BOOLEAN DEFAULT FALSE,  -- Added this line
    FOREIGN KEY (user_id) REFERENCES users(id)
);