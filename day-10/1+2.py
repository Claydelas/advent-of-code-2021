from functools import reduce
from statistics import median
with open('./day-10/input.txt', 'r') as f:

    chunk = {'(': ')', '[': ']', '{': '}', '<': '>'}
    corrupted = {')': 3, ']': 57, '}': 1197, '>': 25137}
    autocomplete = {')': 1, ']': 2, '}': 3, '>': 4}
    corrupted_score = 0
    autocomplete_scores = []

    for line in f.readlines():
        stack = []
        for char in line.strip():
            if char in chunk.keys():
                stack.append(chunk[char])
            elif not stack or stack.pop() != char:
                corrupted_score += corrupted[char]
                break
        else:  # if sentence is not corrupted
            if stack:  # if sentence is incomplete
                score = reduce(lambda acc, c: acc*5 + autocomplete[c], reversed(stack), 0)
                autocomplete_scores.append(score)

    print(corrupted_score)  # part 1 solution (168417)
    print(median(autocomplete_scores))  # part 2 solution (2802519786)
