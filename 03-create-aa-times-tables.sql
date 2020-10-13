-- In this file, you will create some tables for the aa_times database

-- Set the role to the aa_times user so the tables will be owned by that user
SET ROLE aa_times;


-- The "people" table
-- | Column name | Type         | Constraints |
-- |-------------|--------------|-------------|
-- | id          | SERIAL       | PRIMARY KEY |
-- | first_name  | VARCHAR(50)  | NOT NULL    |
-- | last_name   | VARCHAR(50)  | NOT NULL    |
-- | email       | VARCHAR(100) | NOT NULL    |

CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50) not null,
    email VARCHAR(100) not null
);


-- The "sections" table
-- | Column name | Type         | Constraints |
-- |-------------|--------------|-------------|
-- | id          | SERIAL       | PRIMARY KEY |
-- | name        | VARCHAR(150) | NOT NULL    |

CREATE TABLE sections (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) not null
);

-- The "stories" table
-- | Column name | Type    | Constraints                             |
-- |-------------|---------|-----------------------------------------|
-- | id          | SERIAL  | PRIMARY KEY                             |
-- | author_id   | INTEGER | FOREIGN KEY to people table, NOT NULL   |
-- | content     | TEXT    | NOT NULL                                |
-- | section_id  | INTEGER | FOREIGN KEY to sections table, NOT NULL |

CREATE TABLE stories (
    id SERIAL PRIMARY KEY,
    author_id INTEGER NOT NULL ,
    section_id INTEGER NOT NULL ,
    content TEXT not null,
    FOREIGN KEY (author_id) references people(id),
    FOREIGN KEY (section_id) references sections(id)
);
