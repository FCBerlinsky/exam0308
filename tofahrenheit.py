import sys
celsius = sys.argv[-1]
celsius = int(celsius)
fahrenheit = (1.8 * celsius) + 32
print("Temperature in Fahrenheit :", fahrenheit)