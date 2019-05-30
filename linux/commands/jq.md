# Description: The jq Command

### Notes
* Install this external tool using the command `sudo apt install jq`.
* The jq command is used to parse JSON files on command lines.

### Common Examples
```shell
# Check below
```

### Examples With Details
#### Pretty Print JSON
```shell
# Pretty print curl output
curl -s https://kctbh9vrtdwd.statuspage.io/api/v2/status.json | jq "."

# Pretty print JSON file output
cat /tmp/file.json | jq "."

# Pretty print JSON file output
jq "." /tmp/file.json

# Pretty print a JSON string
echo '{ "name": "Dilbert" }' | jq "."
```

#### Basic Selection
```shell
# Sample JSON stored in the file /tmp/file.json
{
  "page": {
    "id": "kctbh9vrtdwd",
    "name": "GitHub",
    "url": "https://www.githubstatus.com",
    "time_zone": "Etc/UTC",
    "updated_at": "2019-05-30T08:01:14.511Z"
  },
  "status": {
    "indicator": "none",
    "description": "All Systems Operational"
  }
}

# Simple Selections
jq ".page.id" /tmp/file.json                                    # "kctbh9vrtdwd"
jq ".status.description" /tmp/file.json                         # "All Systems Operational"
jq ".page.id,.status.description" /tmp/file.json                # Select both the elements in pretty format
jq --raw-output ".page.id,.status.description" /tmp/file.json   # Select both the elements WITHOUT quotes
```

### Cool Tricks
* None

### TODO
* Read man pages.
