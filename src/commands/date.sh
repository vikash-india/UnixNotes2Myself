# Description: date - Print or set the system date and time

# Notes:
# 1. None

# Common Examples
date

# Examples with details
date                                # Print or set the system date and time. Displays current day, date and time.
date -r test.txt                    # Display the last modification time of the file.
date -R                             # Displays date in RFC 2822 format. Example Fri, 24 Sep 2010 00:19:04 +0530.
date +%a                            # Abbreviated weekday name. Eg Fri.
date +%A                            # Full weekday name. Eg Friday.
date +%b                            # Abbreviated month name. Eg Sep. Equivalent to date +%h.
date +%B                            # Full month name. Eg September.
date +%D                            # Date in mm/dd/yy. Eg 09/24/10. Equivalent to date +%m/%d/%y.
date +%F                            # Full date in YYYY-MM-DD. Eg 2010-09-24. Equivalent to date +%Y-%m-%d.
date +%T                            # Time. Eg 00:43:17. Equivalent to date +%H:%M:%S.
date +%u                            # Day of week 1..7. 1 is Monday.
date +%U                            # Week of the year with Sunday as the first day of the week.
date +%w                            # Day of week 0..6. 0 is Sunday.
date +%I:%M:%S%p                    # Eg. 01:20:47AM. %p is for AM and %P is for am.
date +%::z                          # Locale Timezone. Eg. +05:30:00.
date +%Z                            # Timezone name. Eg. IST.
date +%_5Y                          # 5-digit Year with space padded. Eg <Space>2010.
date +%-5Y                          # Year without padding. Eg 2010.
date +%05Y                          # 5-digit Year with 0 padded. Eg 02010.
date +%d-%m-%Y                      # Display date in DD-MM-YYYY format.

date --date='1 days ago' +%d-%m-%Y  # Yesterday's date
date --date='1 day ago' +%d-%m-%Y   # Yesterday's date
date --date='yesterday' +%d-%m-%Y   # Yesterday's date
date --date='-1 day' +%d-%m-%Y      # Yesterday's date

date --date='-1 days ago' +%d-%m-%Y # Tomorrow's date
date --date='-1 day ago' +%d-%m-%Y  # Tomorrow's date
date --date='next day' +%d-%m-%Y    # Tomorrow's date
date --date='tomorrow' +%d-%m-%Y    # Tomorrow's date

# Cool Tricks
# None

# TODO
# None
