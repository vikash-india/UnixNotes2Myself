from re import findall
from subprocess import check_output
from time import sleep, strftime

# Full path is important so that it can work as crontab
TEMPERATURE_LOG_FILE = "/home/pi/scripts/temperature_monitor/temperature.log"


def get_temperature():
    """
    This function returns the temperature of the Raspberry Pi3

    Parameters:
        None

    Returns:
        string: temperature
    """

    # The check_output method can be used to run the terminal commands.
    temperature = check_output(["vcgencmd", "measure_temp"])

    # The check_output method above outputs data as b"temp=79.3'C\n" where b means Byte string ie a value between
    # 0 and 255. Decode the Byte string data to see as a string "temp=79.3'C\n"
    temperature = temperature.decode("UTF-8")

    # Use regex to get ONLY the temperature portion in an array. This will output [79.3]
    temperature = findall("\d+\.\d+", temperature)
    temperature = temperature[0]

    return temperature


def write_temperature(temperature):
    """
    This function write the temperature to a log file.

    Parameters:
        float: temperature.

    Returns:
        None
    """

    with open(TEMPERATURE_LOG_FILE, "a") as log:
        # Note
        # - log.write() will write whatever string is in the brackets to the log file.
        # - "{0},{1}\n" is a string template containing two placeholders separated by a comma, and ending in a newline.
        # - strftime("%Y-%m-%d %H:%M:%S") is the current date and time which is inserted into the first placeholder.
        # - str(temp) is the CPU temperature as a string which is written into the second placeholder after the comma.
        log.write("{0}\t{1}\n".format(strftime("%Y-%m-%d %H:%M:%S"), str(temperature)))


# Main
def main():
    """
    This function write the temperature to a log file.

    Parameters:
        float: temperature.

    Returns:
        None
    """

    # Start an infinite loop that will run until you kill the program with Ctrl+C
    while True:
        # Get the temperature
        temperature = get_temperature()

        # Sleep for 1 minute
        write_temperature(temperature)

        # Sleep for 1 minute
        sleep(60)


# Call Main
if __name__ == "__main__": main()
