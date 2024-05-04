# screen-lock-toggle-script
The Screen Lock Toggle Script is a Linux bash script that allows you to toggle screen lock and unlock for the current active session. 
It helps you to find the running session and use `loginctl` command to perform the lock/unlock actions.

Usage:
To use the script, follow these steps:

1. Make sure you have the necessary permissions to run the script.
2. Open a terminal and navigate to the directory where the script is located.
3. Run the script using the following command:
```
$ sh screenLockToggle.sh <Launch options>
```


5. Replace `<Launch options>` with one of the following launch options:
- `-t`: Toggle the session lock and unlock.
- `-l`: Lock the session.
- `-u`: Unlock the session.

Installation:
To install the script on your system, perform the following steps:

1. Ensure you have the necessary permissions to copy files to `/usr/bin`.
2. Open a terminal and navigate to the directory where the script is located.
3. Run the following command to copy the script to `/usr/bin`:


```
$ cp screenLockToggle.sh /usr/bin/screenLockToggle
```

5. Now, you can run the script from anywhere on your system by executing `screenLockToggle` in the terminal.
