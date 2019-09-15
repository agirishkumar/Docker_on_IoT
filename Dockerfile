# Python Base Image from https://hub.docker.com/r/arm32v7/python/
FROM arm32v7/python:3.8.0b4-buster

# Copy the Python Script to blink LED
COPY led_blink.py ./
RUN apt-get install gcc
# Intall the rpi.gpio python module
RUN pip install --no-cache-dir  rpi.gpio

# Trigger Python script
CMD ["python3", "./led_blink.py"]
