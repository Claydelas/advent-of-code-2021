def adjacent(x: int, y: int):
    for x_d in (-1, 0, 1):
        for y_d in (-1, 0, 1):
            if x_d == y_d == 0:
                continue
            yield x + x_d, y + y_d


with open('./day-11/input.txt', 'r') as f:
    octopi = {}
    for y, line in enumerate(f.readlines()):
        for x, octopus in enumerate(line.strip()):
            octopi[(x, y)] = int(octopus)

    flashes = 0
    for _ in range(100):
        flashed = []
        for octopus in octopi:
            octopi[octopus] += 1
            if octopi[octopus] > 9:
                flashed.append(octopus)

        while flashed:
            flashing = flashed.pop()

            # only flash once
            if octopi[flashing] == 0:
                continue

            octopi[flashing] = 0
            flashes += 1

            for neighbour in adjacent(*flashing):
                if neighbour in octopi and octopi[neighbour] != 0:
                    octopi[neighbour] += 1
                    if octopi[neighbour] > 9:
                        flashed.append(neighbour)

    print(flashes)  # part 1 solution (1725)
