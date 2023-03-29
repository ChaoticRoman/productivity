import openai

with open('.api_key', 'r') as f:
    openai.api_key = f.read().strip()

with open("output.mp3", "rb") as f:
    transcript = openai.Audio.transcribe("whisper-1", f)

print(transcript.text)