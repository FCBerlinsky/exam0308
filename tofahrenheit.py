import sys
if len(sys.argv) != 2:
    print("Usage: python script_name.py <celsius_value>")
    sys.exit(1)
celsius = sys.argv[1]
celsius = int(celsius)
fahrenheit = (1.8 * celsius) + 32
print("Temperature in Fahrenheit :", fahrenheit)