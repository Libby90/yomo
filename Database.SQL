CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    email_address VARCHAR(40),
    full_name VARCHAR(20),
    dob DATE,
    join_date DATE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users VALUES
('lh@ada.ac.uk', 'Libby Hastie', 1990/02/10 );

SELECT * FROM users;
