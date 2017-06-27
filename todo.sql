CREATE TABLE todos (
            id SERIAL PRIMARY KEY,
            title VARCHAR (225) NOT NULL,
            details VARCHAR NULL,
            priority INTEGER DEFAULT '1' NOT NULL,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            completed_at TIMESTAMP NOT NULL
);


INSERT INTO todos (title, priority, created_at) VALUES ('grocery', 2, '2017-07-06');
INSERT INTO todos (title, priority, created_at) VALUES ('buy new car', 3,'2017-07-06');
INSERT INTO todos (title, created_at) VALUES ('win the lottery','2017-07-06');
INSERT INTO todos (title, created_at) VALUES ('tour the Rhone wineries, taste bourdeauxs until I tire of red wine','2017-07-06');
INSERT INTO todos (title, created_at, completed_at) VALUES ('wear poor body out by birthing four chubby babies','2017-07-06', NOW());



SELECT * FROM todos;

SELECT completed_at FROM todos WHERE completed_at IS NULL;
SELECT priority FROM todos WHERE priority > 1;

update todos set completed_at = null where id =4;

DELETE from todos WHERE completed_at IS NOT NULL;
