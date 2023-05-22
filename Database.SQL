CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    email_address VARCHAR(40),
    full_name VARCHAR(20),
    dob DATE, --start with this as want to track age range as a metric
    join_date DATE DEFAULT CURRENT_TIMESTAMP,
    -- saved_articles = [] link to article_id
);

CREATE TABLE articles (
    article_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category VARCHAR(15),
    title VARCHAR(30),
    content VARCHAR,
    date_added DATE DEFAULT CURRENT_TIMESTAMP

);

 CREATE TABLE preferences (
    preference_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer INTEGER,
    --preferences array of chosen categories
    FOREIGN KEY (customer) REFERENCES users(user_id) 
  ON DELETE CASCADE

 );

INSERT INTO users VALUES
('lh@ada.ac.uk', 'Libby H', 1990/02/10 ),
('vb@ada.ac.uk', 'Vienna B', 1989/03/12 ),
('hh@ada.ac.uk', 'Hibz H', 1993/02/10 );

INSERT INTO articles
('travel', 'Cheap Train Tickets', 'link to content'),
('deals', 'H&M 10% off plus free delivery', 'link to content'),
('insurance', 'Cheap Car Insurance', 'link to content');

SELECT * FROM users;
SELECT * FROM articles;
