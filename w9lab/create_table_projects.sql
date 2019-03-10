CREATE TABLE projects (
  projectID INT PRIMARY KEY AUTO_INCREMENT,
  projectName VARCHAR(255) UNIQUE NOT NULL,
  projectDescription TEXT NOT NULL,
  INDEX (projectName)
);