-- Contact Table
CREATE TABLE Contact (
    contact_name VARCHAR(255),
    email VARCHAR(255),
    message TEXT,
    date_sent DATE,
    project_id INTEGER,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

-- Project Table
CREATE TABLE Project (
    project_id INTEGER PRIMARY KEY IDENTITY(1,1), 
    title VARCHAR(255),
    description TEXT,
    start_date DATE,
    end_date DATE,
    project_link VARCHAR(255)
);

-- Category Table
CREATE TABLE Category (
    category_id INTEGER PRIMARY KEY IDENTITY(1,1), 
    name VARCHAR(255)
);

-- Skill Table
CREATE TABLE Skill (
    skill_id INTEGER PRIMARY KEY IDENTITY(1,1),  
    name VARCHAR(255),
    proficiency VARCHAR(255),
    project_id INTEGER,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

-- Testimonial Table
CREATE TABLE Testimonial (
    testimonial_id INTEGER PRIMARY KEY IDENTITY(1,1), 
    writer_name VARCHAR(255),
    company VARCHAR(255),
    testimonial_text TEXT,
    date_received DATE,
    project_id INTEGER,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

SELECT name 
FROM sys.tables;