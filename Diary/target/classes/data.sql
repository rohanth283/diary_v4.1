-- Clear existing data
DELETE FROM diary_entries;
DELETE FROM users;

-- Insert test user (username: "user", password: "password")
INSERT INTO users (username, password) 
VALUES ('user', '$2a$10$gbjIonMW.cY5bbbjkpPpnO3KHcALyazpwpqNPu9QnkA9ifIWImT3O');