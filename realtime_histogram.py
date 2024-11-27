import sys
import re
import time

import matplotlib.pyplot as plt

def attempts():
    with open(sys.argv[1]) as f:
        lines = f.read().split("\n")

    attempt_numbers = []
    pattern = r"~ Success on attempt (\d+)!"

    for line in lines:
        match = re.search(pattern, line)
        if match:
            attempt_numbers.append(int(match.group(1)))
    return attempt_numbers

plt.ion()
fig, ax = plt.subplots()
while True:
    attempt_numbers = attempts()
    ax.cla()
    if attempt_numbers:  # Ensure there is data to plot
        ax.hist(attempt_numbers, bins=range(1, max(attempt_numbers) + 2), align='left', edgecolor='black')
        ax.set_xlabel('Attempt Number')
        ax.set_ylabel('Frequency')
        ax.set_title(f'Success Attempts {sys.argv[1]}')
    plt.draw()
    plt.pause(1)
