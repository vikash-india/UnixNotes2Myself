# Description: The nohup Command

### Notes
* The nohup command runs a command immune to hangups, with output to a non-tty.
* Executing a Unix job in the background using & or bg command, and logging out from the session, kills the process.
* Executing the job with nohup, or making it as batch job using at, batch or cron command can prevent the
  termination of programs.
* The general form is nohup command-with-options &
* By default, the standard output will be redirected to nohup.out file in the current directory. And the standard
*    error will be redirected to stdout, thus it will also go to nohup.out. The nohup.out file will contain both
*    standard output and error messages from the script that is executed using nohup command.

### Common Examples
```shell
nohup command > logfile_name &
```

### Examples with details
```shell
nohup command > logfile_name &                  # Run a program in background even after ssh or session is terminated.
nohup sh custom-script.sh &                     # Execute without using redirection will create nohup.out for standard
                                                # output & standard error.
nohup sh custom-script.sh > custom-out.log &    # Execute using redirection and nohup.out wont be created.
```

### Cool Tricks
* None

### TODO
* None
