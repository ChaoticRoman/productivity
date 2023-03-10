#!/usr/bin/env python3
import openai
import os
import sys

MODEL = "text-davinci-003"

os.chdir(os.path.dirname(__file__))

with open('.api_key', 'r') as f:
    openai.api_key = f.read().strip()

prompt = " ".join(sys.argv)

response = openai.Completion.create(
    model=MODEL, prompt=prompt, temperature=0, max_tokens=4000)

print(response.choices[0].text.strip())
