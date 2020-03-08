#! /bin/bash

set -e
echo -e 'In de.sh\n'
cat /etc/os-release
echo
echo python is $(python -V)
echo python3 is $(python3 -V)
echo pip is $(pip -V)
echo pip3 is $(pip3 -V)

# Comment out this line to exit container when finished executing commands
exec /bin/bash
