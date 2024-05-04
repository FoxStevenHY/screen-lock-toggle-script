#!/bin/bash

# Get the first session number
session_number=$(loginctl list-sessions --no-legend | awk '$5 == "tty1" {print $1}')

# Check the state of the session
state=$(loginctl show-session $session_number -p LockedHint --no-pager | awk -F= '/LockedHint/ {print $2; exit}')
if [[ "$state" == "no" ]]; then
  echo "The session ($session_number) is currently unlocked."
else
  echo "The session ($session_number) is currently locked."
fi


lockScreen () {
  loginctl lock-session $session_number
  echo "Lock command sent"
}

unlockScreen () {
  loginctl unlock-session $session_number
  echo "Unlock command sent"
}

if [[ "$1" == "-t" ]]; then
  # Check if the state is active or not
  if [[ "$state" == "no" ]]; then
    lockScreen
  else
    unlockScreen
  fi
elif [[ "$1" == "-l" ]]; then
  lockScreen
elif [[ "$1" == "-u" ]]; then
  unlockScreen
else
  echo "Use launch options:"
  echo "-t For toggling the session lock and unlock"
  echo "-l For Locking the session"
  echo "-u For Unlocking the session"
fi
