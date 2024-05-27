#!/bin/bash

# default audio device = pulseaudio

echo 'clear voice test'
./dsd -i ./samples/voice/clear.wav
# ./dsd -i ./samples/voice/clear.wav -o - | play -r 4800 -t raw -e s -b 32 -c 1 -V0 -
echo 'voice arc40 test'
./dsd -i ./samples/voice/ARC40E.wav -1 '1234567890'
echo 'voice des64 test'
./dsd -i ./samples/voice/DES64E.wav -1 '1234567890123456'
echo 'voice aes128 test'
./dsd -i ./samples/voice/AES128E.wav -H '1234567890123456 7890123456789012'
echo 'voice aes192 test'
./dsd -i ./samples/voice/AES192E.wav -H '1234567890123456 7890123456789012 3456789012345678'
echo 'voice aes256 test'
./dsd -i ./samples/voice/AES256E.wav -H '1234567890123456 7890123456789012 3456789012345678 9012345678901234'
