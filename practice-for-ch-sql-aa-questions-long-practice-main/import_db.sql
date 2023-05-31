PRAGMA foreign_keys = ON;

DROP TABLE if exists users

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL,
);

DROP TABLE if exists questions

CREATE TABLE questions (
  id INTEGER PRIMARY KEY
  title INTEGER PRIMARY KEY,
  body TEXT NOT NULL,

  FOREIGN KEY (author) REFERENCES title(id)
);


DROP TABLE if exists question_follows

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY
    FOREIGN KEY (users) REFERENCES (users.id)
    FOREIGN KEY (questions) REFERENCES (questions.id)
);


DROP TABLE if exists replies

CREATE TABLE replies (
    id INTEGER PRIMARY KEY
    FOREIGN KEY (parent_reply_id) REFERENCES (replies_id)
    FOREIGN KEY (question) REFERENCES (questions.id)

);


DROP TABLE if exists question_likes

CREATE TABLE question_likes(
    id INTEGER PRIMARY KEY
    FOREIGN KEY (users.id) REFERENCES (questions.body)
    FOREIGN KEY (questions.body) REFERENCES (questions)
);

INSERT INTO
    users (fname, lname)

VALUES
    ('TEST', 'USER')
    ('Will', 'Iam')
INSERT INTO
    questions(title,body)

VALUES
    ('TEST TITLE', 'TEST INPUT HERE')
