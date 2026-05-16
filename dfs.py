graph = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': [],
    'E': ['G'],
    'F': [],
    'G': []
}

def dfs(graph, start, goal, path=[]):
    path = path + [start]

    if start == goal:
        return path

    for neighbour in graph[start]:
        if neighbour not in path:
            new_path = dfs(graph, neighbour, goal, path)

            if new_path:
                return new_path

    return None

path = dfs(graph, 'A', 'G')

print("DFS Path:")
print(" -> ".join(path))