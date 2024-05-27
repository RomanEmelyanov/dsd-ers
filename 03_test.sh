#!/bin/bash

echo 'sms clear test'
./dsd -i ./samples/sms/clear1234567890.wav -Z -o null 2>./samples/out/clear_sms.txt
echo 'sms des64 test'
./dsd -i ./samples/sms/des64_12345678901.wav -1 '1234567890123456' -Z -o null 2>./samples/out/des64_sms.txt
echo 'sms aes128 test'
./dsd -i ./samples/sms/aes128_12345678901.wav -H '1234567890123456 7890123456789012' -Z -o null 2>./samples/out/aes128_sms.txt
echo 'sms aes192 test'
./dsd -i ./samples/sms/aes192_12345678901.wav -H '1234567890123456 7890123456789012 3456789012345678' -Z -o null 2>./samples/out/aes192_sms.txt
echo 'sms aes256 test'
./dsd -i ./samples/sms/aes256_12345678901.wav -H '1234567890123456 7890123456789012 3456789012345678 9012345678901234' -Z -o null 2>./samples/out/aes256_sms.txt

# default audio device = pulseaudio
echo 'voice clear test'
./dsd -i ./samples/voice/clear.wav -Z 2>./samples/out/clear_voice.txt
echo 'voice arc40 test'
./dsd -i ./samples/voice/ARC40E.wav -1 '1234567890' -Z 2>./samples/out/arc40_voice.txt
echo 'voice des64 test'
./dsd -i ./samples/voice/DES64E.wav -1 '1234567890123456' -Z 2>./samples/out/des64_voice.txt
echo 'voice aes128 test'
./dsd -i ./samples/voice/AES128E.wav -H '1234567890123456 7890123456789012' -Z 2>./samples/out/aes128_voice.txt
echo 'voice aes192 test'
./dsd -i ./samples/voice/AES192E.wav -H '1234567890123456 7890123456789012 3456789012345678' -Z 2>./samples/out/aes192_voice.txt
echo 'voice aes256 test'
./dsd -i ./samples/voice/AES256E.wav -H '1234567890123456 7890123456789012 3456789012345678 9012345678901234' -Z 2>./samples/out/aes256_voice.txt

