from re import findall
from subprocess import check_output
from time import sleep, strftime

# Modify the following path based on your usecase
TEMPERATURE_LOG_FILE = "/home/pi/bin/temperature_monitor/temperature.log"


def get_temperature():
    temperature = check_output(["vcgencmd", "measure_temp"]).decode("UTF-8")
    temperature = findall("\d+\.\d+", temperature)[0]
    return temperature


def write_temperature(temperature):
    with open(TEMPERATURE_LOG_FILE, "a") as log:
        log.write("{0}\t{1}\n".format(strftime("%Y-%m-%d %H:%M:%S"), str(temperature)))


def main():
    temperature = get_temperature()
    write_temperature(temperature)


# Call Main
if __name__ == "__main__": main()