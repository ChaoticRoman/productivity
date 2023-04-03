# Productivity

My personal productivity tools.

## Getting started

```
mkdir projects
cd projects
git clone git@github.com:ChaoticRoman/productivity.git
cd productivity
ln -s /home/roman/projects/productivity/bash_aliases /home/roman/.bash_aliases
```

# OpenAPI easy toolset

# Installation

```
pip install --upgrade pip
pip install openai
```

Expects `openai/.api_key` file with your [OpenAI API](https://platform.openai.com/account/api-keys) key in there.

## ChatGPT easy

CLI tool that allows to make simple requests to OpenAI without context.

```
./openai/chatgpt.py Make up some joke
Q: What did the fish say when it hit the wall?
A: Dam!
```

## DALL-E easy

CLI tool to generate an image based on a simple request to DALL-E API.

```
./openai/dalle.py white siamese cat
https://oaidalleapiprodscus.blob.core.windows.net/<link to the generated image of size 256x256>
```

## Google search

CLI tool to launch a Google request in brave browser

Expects brave to be your browser.  Then `g` command should open new tab with google prompt:

```
g Frank Herbert wiki
```

Adjust `google-from-bash/google.py` for different browser.

## Nice aliases

These aliases provide shortcuts for various commands, such as changing
directories (`..`), listing files (`l` and `ll`), running network troubleshooting
tools (`pingg` and `pinggg`), working with Docker containers
(`listRunningContainers`, `listAllContainers`, `killAllContainers`, and
`removeAllContainers`), and updating the system (`up`). There are also aliases for
running Python scripts (`g` and `gpt`), creating and managing GitHub repositories
(`gh-repo` and `gh-pr`), and working with the GCC compiler (`printIncludePath`).

You would probably like to adjust paths in there...
