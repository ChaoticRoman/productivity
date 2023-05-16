# Time summing program written by GPT-4

## Prompts:

1. **Write a python program that has '> ' prompt that accepts time problems like
    "8:30" + "1:45" and it would return "10:15".**

   [Cool, it gave fully functional stuff.]

2. **Let it support up arrow for browsing the history for more command line experience...**

    Super cool solution I did not know:

    > ...Python's built-in input() function doesn't have built-in support for command history
    or arrow keys. However, you can use the readline module in the Python Standard Library
    to achieve this. Here's your program updated with this functionality:

    [...]

    > By simply importing readline at the top, we enable the command history functionality.
    This allows you to press the up arrow to cycle through previously entered commands.
    Note that this will work in a Unix-like command line environment, but it will not work
    in IDLE or other Python REPL environments that don't support readline. For Windows,
    you may need to install a library like pyreadline to get similar functionality.

3. **Add also q, exit and ctrl + d for exiting**

    > The Python script can be modified to support exiting when 'q' or 'exit' is entered. The `CTRL+D` exit command is a bit more complex, as it sends an `EOF` (End of File) signal. In Python, this can be caught with a `try/except` block for the `EOFError` exception. Here is your updated program:

    ```python
    import readline
    from datetime import datetime, timedelta

    while True:
        try:
            # Accept input
            input_time = input('> ')
            
            if input_time.lower() in ['q', 'exit']:
                break

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
    ```

    > In this script, before any calculation is done, it checks if the entered string is 'q' or 'exit' (ignoring case). If it is, the script breaks out of the loop and ends. The `EOFError` exception is caught when the user enters `CTRL+D`, and also results in the script breaking out of the loop and ending.