# %%
from functools import reduce
map = []
with open('./day-9/input.txt', 'r') as f:
    map = [[int(char) for char in line if char != '\n']
           for line in f.readlines()]
# %%
dirs = [(-1, 0), (1, 0), (0, -1), (0, 1)]
def dfs(x, y):

    if (x, y) in seen:
        return

    seen.add((x, y))

    for d1, d2 in dirs:
        x1, y1 = x + d1, y + d2
        try:
            if 9 > map[x1][y1] > map[x][y]:
                dfs(x1, y1)
        except:
            # don't judge me
            continue

res = []
# Skips finding the lowest points first (implemented in './day-9/1.apl')
for x in range(len(map)):
    for y in range(len(map[0])):
        seen = set()
        dfs(x, y)
        res.append(len(seen))

res.sort()
print(reduce(lambda a, b: a * b, res[-3:])) # solution for part 2 (1600104)
