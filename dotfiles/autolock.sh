#!/bin/bash

function prntdbg {
  if [ ! -z "$DEBUG" ]; then
    echo "$@"
  fi
}

function lock_screen {
    open -a ScreenSaverEngine
}

function wait_for_plugin {
  while true; do
    if system_profiler SPUSBDataType | grep 'YubiKey' 2>/dev/null >/dev/null; then
      prntdbg yubikey plugged in
      break
    else
      prntdbg yubikey removed
    fi
    sleep 1
  done
}

function wait_for_unplug {
  while true; do
    if system_profiler SPUSBDataType | grep 'YubiKey' 2>/dev/null >/dev/null; then
      prntdbg yubikey plugged in
    else
      prntdbg yubikey removed
      lock_screen
      break
    fi
    sleep 1
  done
}

while true; do
  wait_for_plugin
  wait_for_unplug
done
