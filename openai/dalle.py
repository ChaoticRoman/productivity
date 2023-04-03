#!/usr/bin/env python3
import openai
import os
import sys

os.chdir(os.path.dirname(__file__))

with open('.api_key', 'r') as f:
    openai.api_key = f.read().strip()

prompt = " ".join(sys.argv[1:])

response = openai.Image.create(
    prompt=prompt, n=1, size="256x256")

print(response['data'][0]['url'])
