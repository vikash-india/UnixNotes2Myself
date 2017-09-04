# Description: atopsar - AT Computing's System Activity Report (atop related)

# Notes
# - None

# Common Examples
atopsar -A

# Examples with details
atopsar -A                      # Use the flag -A to return all available reports.
atopsar -A -b 11:00 -e 11:15    # Limit the report to a specific time window using beginning -b and end -e flags.
atopsar -c 30 5                 # Generate a report for current CPU utilization for 5 minutes (ten times with intervals
                                # of 30 seconds).

# Cool Tricks
# None

# TODO
# None
