-- Vložení uzlů
INSERT INTO Nodes (id, name) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H'),
(9, 'I');

-- Vložení cest
INSERT INTO Edges (id, start_node, end_node, distance, direction) VALUES
(1, 1, 2, 1, 'U'), -- A - B
(2, 1, 4, 2, 'U'), -- A - D
(3, 2, 3, 3, 'D'), -- B -> C
(4, 2, 5, 4, 'U'), -- B - E
(5, 3, 6, 3, 'U'), -- C - F
(6, 4, 5, 3, 'U'), -- D - E
(7, 5, 6, 2, 'U'), -- E - F
(8, 4, 7, 2, 'U'), -- D - G
(9, 5, 8, 3, 'U'), -- E - H
(10, 6, 9, 3, 'U'), -- F - I
(11, 7, 8, 1, 'U'), -- G - H
(12, 8, 9, 2, 'U'); -- H - I
