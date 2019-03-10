use todos;
DROP TABLE todoItem;
CREATE TABLE todoItem (
  todoID       INT PRIMARY KEY AUTO_INCREMENT,
  todoItem 		VARCHAR(255) NOT NULL,
  dateCreated 	DATETIME NOT NULL DEFAULT NOW(),
  todoStatus	BOOLEAN NOT NULL,
  projectID  INT NOT NULL,
  INDEX (todoItem),
  CONSTRAINT fk_project_project_id 
	FOREIGN KEY (projectID)
    REFERENCES projects (projectID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);