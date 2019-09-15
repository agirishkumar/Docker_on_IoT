# Python Base Image from https://hub.docker.com/r/arm32v7/python/
FROM arm32v7/python:3.7-slim-buster

# Copy the Python Script to blink LED
COPY led_blink.py ./

# Intall the rpi.gpio python module
RUN pip install --no-cache-dir gcc  rpi.gpio

# Trigger Python script
CMD ["python3", "./led_blink.py"]
