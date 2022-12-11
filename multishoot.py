#multishoot
#!/usr/bin/python3
import time
from picamera2 import Picamera2
from picamera2.sensor_format import SensorFormat

num_frames = 3
exposure_time = int(1000000/80)
res = (4656, 3496)

picam2 = Picamera2()
capture_config = picam2.create_still_configuration(raw={"size": res}, buffer_count=num_frames)
picam2.configure(capture_config)
images = []

f = 230

print ("setting up cam and focusing..")
picam2.start()
picam2.set_controls({"ExposureTime": exposure_time, "AnalogueGain": 1.0})
#picam2.set_controls({"AfMode": 1 ,"AfTrigger": 0})
picam2.set_controls({"AfMode": 0, "LensPosition": f})
time.sleep(1)
metadata = picam2.capture_metadata()
metadata["ExposureTime"] = exposure_time
metadata["AnalogueGain"] = f
#picam2.capture_file("img/focus_preview.jpg")
time.sleep(4)
print ("Capturing images raw")
for i in range(num_frames):
    images.append(picam2.capture_array("raw"))
print ("shooting end, saving images...")
metadata = picam2.capture_metadata()
print (metadata)
metadata["ExposureTime"] = exposure_time
metadata["AnalogueGain"] = f/100
print (metadata)
for i in range(len(images)):
    picam2.helpers.save_dng(images[i], metadata, capture_config["raw"], "img/img_{}.dng".format(i+1))





