DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS questions_follows;
DROP TABLE IF EXISTS replies;
DROP TABLE IF EXISTS question_likes;


PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL 
);

INSERT INTO
    users (fname, lname)
VALUES
    ('Catherine', 'Vidos'),
    ('Vladimir', 'Solovey'),
    ('hello', 'it''s me');

    

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author_id INTEGER NOT NULL, 

    FOREIGN KEY (author_id) REFERENCES users(id) 
);


INSERT INTO
    questions (title, body, author_id)
VALUES
    ('What day is it today?', 'What happend today in 1456?', (SELECT id FROM users WHERE fname = 'Vladimir')),
    ('Favorite color?', 'What is your favorite color?', (SELECT id FROM users WHERE fname = 'Catherine'));

CREATE TABLE questions_follows (        
    id INTEGER PRIMARY KEY,
    question_id INTEGER NOT NULL,
    follower_id INTEGER NOT NULL, 

    FOREIGN KEY (follower_id) REFERENCES users(id), 
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

INSERT INTO 
    questions_follows (question_id, follower_id)
VALUES 
    ((SELECT id FROM questions WHERE title = 'What day is it today?'),  (SELECT id FROM users WHERE fname = 'Vladimir')),
    ((SELECT id FROM questions WHERE title = 'Favorite color?'), (SELECT id FROM users WHERE fname = 'Catherine'));

CREATE TABLE replies (
    id INTEGER PRIMARY KEY,  
    question_id INTEGER NOT NULL, 
    author_id INTEGER NOT NULL,      
    reply_body TEXT NOT NULL,
    parent_reply_id INTEGER,

    
     FOREIGN KEY (question_id) REFERENCES questions(id),
     FOREIGN KEY (author_id) REFERENCES users(id),
     FOREIGN KEY (parent_reply_id) REFERENCES replies(id)
);
INSERT INTO 
    replies (question_id, author_id, reply_body, parent_reply_id)
VALUES 
    ((SELECT id FROM questions WHERE title = 'What day is it today?'),  
    (SELECT id FROM users WHERE fname = 'Catherine'),
    'catherine''s birthday, she is the queen of everyone',  
    NULL),
    
    ((SELECT id FROM questions WHERE title = 'Favorite color?'),  
    (SELECT id FROM users WHERE fname = 'Vladimir'),
    'hot pink',  
    NULL);

INSERT INTO
    replies (question_id, author_id, reply_body, parent_reply_id)
VALUES 
    ((SELECT id FROM questions WHERE title = 'Favorite color?'),  
    (SELECT id FROM users WHERE fname = 'Catherine'),
    'purple',  
    (SELECT id FROM replies WHERE reply_body = 'hot pink')
    );





CREATE TABLE question_likes (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

