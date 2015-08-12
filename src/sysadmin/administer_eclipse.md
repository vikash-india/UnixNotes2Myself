# Description: Eclipse Administration on Ubuntu

### Setup Remote Tomcat Debugging Using Eclipse
1. Start tomcat from command line in debug mode.
    ```
    # Export JPDA variables in .bashrc if their values are different from the following default values.
    export JPDA_ADDRESS=8000
    export JPDA_TRANSPORT=dt_socket

    # Start tomcat in debug mode
    ./catalina.sh jpda start

    # Start tomcat in mormal mode
    ./startup.sh
    ```
2. Set a code breakpoint.
3. Click Run - Debug Configurations.
4. Select Remote Java Application.
5. Click on New (A page icon with a plus) or Right Click - New.
6. Fill the dialogue with the following info
    - Name: Tomcat
    - Source Tab: Add - Java Project - OK - Select appropriate Project - OK.
    - Connect Tab
        * Project: Click Browse and select appropriate Project.
        * Host: localhost
        * Port: 8000
    - Click on Apply.
    - Click on Debug to start debugging application.
7. Open a browser and start the application. It should redirect into Eclipse to the line of code with the breakpoint.

### Set a Shortcut Key for the Last External Tool
1. Windows -> Preferences -> type Keys in search box -> type launch in search box.
2. Assign a shortcut to the command: Run Last Launched External Tool
3. Choose the view JavaScript"

### Common Commands
```
# Vertical selection of text.
# This toggles the selection mode to column selection mode.
Alt + Shift + A
```

### TODO
* None
