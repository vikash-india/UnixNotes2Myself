# Description: Eclipse Administration on Ubuntu

### Install Eclipse Plugins
```
# Plugin for Python Development - PyDev Plugin
# Make sure Python is installed on the system.
# Click on Help Menu -> Install New Software -> "Enter Python - http://pydev.org/updates" -> Click on Add.

# Plugin for Perl Development - EPIC Plugin
# Make sure Perl is installed on the system.
# Click on Help Menu -> Install New Software -> Enter "Perl - http://e-p-i-c.sf.net/updates/" -> Click on Add.

# Plugin for C/C++ Coding - CDT Plugin
# Click on Help Menu -> Install New Software -> Select "Juno - http://download.eclipse.org/releases/juno" from dropdown -> Filter by "C/C++" -> Select C/C++ Development Tools and C/C++ Library API Documentation Hover Help under Programming Languages.

# Plugin for JavaScript Coding - JSDT Plugin
# Click on Help Menu -> Install New Software -> Select "Juno - http://download.eclipse.org/releases/juno" from dropdown -> Filter by "C/C++" -> Select JavaScript Development Tools under Programming Languages.

# Plugin for Shell Programming - ShellEd Plugin
# Click on Help Menu -> Install New Software -> "Enter ShellEd - https://downloads.sourceforge.net/project/shelled/shelled/ShellEd%202.0.2/update" -> Click on Add.

# Plugin for converting cases of variables etc - AnyEdit Tools Plugin
# Click on Help Menu -> Install New Software -> Enter "AnyEdit - http://andrei.gmxhome.de/eclipse/" -> Click on Add.
```

### Tune Eclipse
```
# Set Memory Limit for Eclipse
# Updated Xms and Xmx lines in eclipse.ini under -vmargs options with following values
-Xms1024m
-Xmx4096m"

# Set Eclipse to tolerate unsigned plugins during installations.
# Some of the plugins installation will crib if they are not signed. This option will ignore such warnings and proceed.
# Add following lines in eclipse.ini under -vmargs options
-DtolerateIllegalAmbiguousVarargsInvocation=true
```

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
