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

## ChatGPT

```
pip install --upgrade pip
pip install openai
```

Expects `./openai/.api_key` file with your API key in there. Then `gpt` alias should just work:

```
$ gpt Tell a joke.
Q: Why did the chicken cross the playground?

A: To get to the other slide!
```

## Google

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