with open('./day-10/input.txt', 'r') as f:

    chunk = {'(': ')', '[': ']', '{': '}', '<': '>'}
    points = {')': 3, ']': 57, '}': 1197, '>': 25137}
    score = 0

    for line in f.readlines():
        stack = []
        for char in line.strip():
            if char in chunk.keys():
                stack.append(chunk[char])
            elif not stack or stack.pop() != char:
                score += points[char]
                break

    print(score) # part 1 solution (168417)
