CREATE TABLE Nodes (
    id INT PRIMARY KEY,
    name CHAR(1) NOT NULL
);

CREATE TABLE Edges (
    id INT PRIMARY KEY,
    start_node INT,
    end_node INT,
    distance INT NOT NULL,
    direction CHAR(1) CHECK (direction IN ('D', 'U')),
    FOREIGN KEY (start_node) REFERENCES Nodes(id),
    FOREIGN KEY (end_node) REFERENCES Nodes(id)
);
