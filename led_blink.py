import RPi.GPIO
import time
# configure th pin 8
GPIO.setmode(GPIO.BOARD)
GPIO.setmode(8,GPIO.OUT)
GPIO.setwarnings(False)

# Blink interval
blink_interval = .5 # time in seconds

# blink loop

while True:
    GPIO.output(8,True)
    time.sleep(blink_interval)

    GPIO.output(8,False)
    time.sleep(blink_interval)

    # release 
GPIO.cleanup()
