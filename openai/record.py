import os
import wave
import sys

import pyaudio

from pydub import AudioSegment

import openai

import pyttsx3

import requests

import playsound

os.chdir(os.path.dirname(__file__))

CHUNK = 1024
FORMAT = pyaudio.paInt16
# CHANNELS = 1 if sys.platform == 'darwin' else 2
CHANNELS = 1
RATE = 44100
RECORD_SECONDS = 7

with wave.open('output.wav', 'wb') as wf:
    p = pyaudio.PyAudio()
    wf.setnchannels(CHANNELS)
    wf.setsampwidth(p.get_sample_size(FORMAT))
    wf.setframerate(RATE)

    stream = p.open(format=FORMAT, channels=CHANNELS, rate=RATE, input=True)

    print('Recording...')
    chunks_count = RATE // CHUNK * RECORD_SECONDS
    for i in range(0, chunks_count):
        print(f"{i}/{chunks_count}")
        wf.writeframes(stream.read(CHUNK))
    print('Done')

    stream.close()
    p.terminate()

AudioSegment.from_wav("output.wav").export("output.mp3", format="mp3")

with open('.api_key', 'r') as f:
    openai.api_key = f.read().strip()

print("\nTranscribing...\n")

with open("output.mp3", "rb") as f:
    transcript = openai.Audio.transcribe("whisper-1", f).text

print("Transcribed prompt:", transcript)

print("\nCompleting...\n")

MODEL = "text-davinci-003"
response = openai.Completion.create(
    model=MODEL, prompt=transcript, temperature=0, max_tokens=4000)

response = response.choices[0].text.strip()

print("Response:", response)

# engine = pyttsx3.init()
# engine.say(response)
# engine.runAndWait()

print("\nPreparing audio...\n")

with open('.elevenlabs_api_key', 'r') as f:
    ELEVENLABS_API_KEY = f.read().strip()

headers = {
    'accept': 'audio/mpeg',
    'xi-api-key': ELEVENLABS_API_KEY,
    'Content-Type': 'application/json',
}

json_data = {
    'text': response,
}

output_audio = requests.post('https://api.elevenlabs.io/v1/text-to-speech/21m00Tcm4TlvDq8ikWAM', headers=headers, json=json_data).content

with open('prompt_response.mp3', 'wb') as f:
    f.write(output_audio)

playsound.playsound("prompt_response.mp3")
