CREATE TABLE IF NOT EXISTS users (
    id UUID NOT NULL,
    email varchar(255) NOT NULL,
    username varchar(15) NOT NULL,
    password varchar(30) NOT NULL,
    created_on TIMESTAMP NOT NULL,
    updated_on TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
);