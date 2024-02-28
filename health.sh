#!/bin/bash

#Print system information function
print_system_info() {
  echo "==== System Information ===="
  echo "Hostname              : $(hostname)"
  echo "Kernel Version        : $(uname -r)"
  echo "Uptime                : $(uptime -p)"
  echo "Last Reboot           : $(who -b | awk '{print $3, $4}')" #Show date $3 and time $4

}

#Main function to call the functions
main() {
  print_system_info
}

#Execute the main function
main