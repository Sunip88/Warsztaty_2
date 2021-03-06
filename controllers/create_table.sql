CREATE TABLE users
(
id serial,
username VARCHAR (255) unique,
hashed_password VARCHAR(80),
email VARCHAR (255) unique,
PRIMARY KEY (id)
);

CREATE TABLE message
(
id serial,
from_id int,
to_id int,
text text,
creation_date timestamp,
PRIMARY KEY (id),
FOREIGN KEY (to_id) REFERENCES users(id) ON DELETE CASCADE
);





