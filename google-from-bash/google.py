#!/usr/bin/env python3
import subprocess, sys

BASE_URL = "https://www.google.com/search?q="

subprocess.run(["brave-browser", f"{BASE_URL}{'+'.join(sys.argv[1:])}"],
    stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
