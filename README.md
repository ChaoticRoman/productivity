# Productivity

My personal productivity tools.

## Getting started

```
mkdir projects
git clone git@github.com:ChaoticRoman/productivity.git
cd productivity
ln -s /home/roman/projects/productivity/bash_aliases /home/roman/.bash_aliases
```

## ChatGPT easy

CLI tool that allows to make simple requests to OpenAI without context

```
pip install --upgrade pip
pip install openai
```

Expects `openai/.api_key` file with your [OpenAI API](https://platform.openai.com/account/api-keys) key in there. Then `gpt` command should just work.

```
./openai/chatgpt.py Make up some joke
Q: What did the fish say when it hit the wall?
A: Dam!
```

## Google search

CLI tool to launch a google request in brave browser

Expects brave to be your browser.  Then `g` command should just work.
