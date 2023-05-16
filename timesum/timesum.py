#!/usr/bin/env python3
import readline
# This above is really cool, readline by only its importing adds a history like
# browsing to the input function.
#
# "Settings made using this module affect the behaviour of both the interpreter’s
# interactive prompt and the prompts offered by the built-in input() function."
#
# From: https://docs.python.org/3/library/readline.html
#
# Suggested by GPT-4

from datetime import datetime, timedelta

while True:
    try:
        # Accept input
        input_time = input('> ')

        # Split the input by '+'
        times = input_time.split('+')

        # Strip white spaces and split by ':'
        times = [t.strip().split(':') for t in times]

        # Create timedelta objects
        times = [timedelta(hours=int(t[0]), minutes=int(t[1])) for t in times]

        # Add up all times
        total_time = sum(times, timedelta())

        # Convert timedelta back to time
        total_hours = total_time.seconds // 3600
        total_minutes = (total_time.seconds // 60) % 60

        # Print the result
        print(f'{total_hours}:{total_minutes:02}')

    except EOFError:
        print('\nExiting...')
        break

    except Exception as e:
        print(f'Invalid input. Please use the format "H:MM" + "H:MM". Error: {e}')
