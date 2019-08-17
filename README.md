# mcc
mcc: a handy build helper for the bbc microbit.

## What this script does
This allows you to compile c++ files for use on the microbit system, making use of the lancaster university microbit-dal.

## How do I install this script?
Simply make the mcc script executable, and then put it somewhere that will be available on your bash PATH.
```bash
chmod +x mcc
mv mcc ~/.local/bin/.
```

For bash completion to also operate, you need to ensure mcc-completion.bash is sourced. This can (supposedly) be done by putting the file in your /etc/bash_completion.d folder.
```bash
sudo mv mcc-completion.bash /etc/bash_completion.d/.
```

Alternatively, you can have it sourced via your bashrc script.
```bash
mv mcc-completion.bash .local/bin/.
echo source .local/bin/mcc-completion.bash >> .bashrc
```

## How do I use this script?
```bash
mcc myProgram.cpp
```

The script will run, and (if successful), should produce the output file 'myProgram.hex' in the same directory. You can simply drop this program straight into your microbit and it should run.

## Dependencies
Dependencies are the same as are presented on the lancaster page (https://lancaster-university.github.io/microbit-docs/offline-toolchains/#installation-on-linux), and the yotta page (http://docs.yottabuild.org/#installing-on-linux). The script will warn you about dependencies that are not installed.

Additionally, python3 and virtualenv must be installed.

You do not need to install Yotta: the script will install it in a virtual environment for you.
