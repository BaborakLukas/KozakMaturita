class Node:
    def __init__(self, name):
        self.name = name

class Edge:
    def __init__(self, start_node, end_node, distance, direction):
        self.start_node = start_node
        self.end_node = end_node
        self.distance = distance
        self.direction = direction

class Graph:
    def __init__(self):
        self.nodes = {}
        self.edges = []

    def add_node(self, name):
        node = Node(name)
        self.nodes[name] = node

    def add_edge(self, start_name, end_name, distance, direction):
        if start_name in self.nodes and end_name in self.nodes:
            edge = Edge(self.nodes[start_name], self.nodes[end_name], distance, direction)
            self.edges.append(edge)

graph = Graph()

for node_name in ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I']:
    graph.add_node(node_name)

edges_info = [
    ('A', 'B', 1, 'U'),
    ('A', 'D', 2, 'U'),
    ('B', 'C', 3, 'D'),
    ('B', 'E', 4, 'U'),
    ('C', 'F', 3, 'U'),
    ('D', 'E', 3, 'U'),
    ('E', 'F', 2, 'U'),
    ('D', 'G', 2, 'U'),
    ('E', 'H', 3, 'U'),
    ('F', 'I', 3, 'U'),
    ('G', 'H', 1, 'U'),
    ('H', 'I', 2, 'U')
]

for start, end, distance, direction in edges_info:
    graph.add_edge(start, end, distance, direction)

