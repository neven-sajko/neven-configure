export TZ CC CFLAGS XZ_DEFAULTS MANWIDTH PS2 HISTCONTROL HISTFILE LESSHISTFILE SHELL

TZ=:/etc/localtime

# Also '-std=gnu89' '-std=c89' '-std=c11' -pedantic -Wpedantic -pedantic-errors -Wconversion -Wshadow , for your own code.
# -fno-exceptions for C++.
#
# https://github.com/google/sanitizers/wiki
#
# "Sanitizer" options:
#  -fsanitize=undefined -fsanitize=float-divide-by-zero -fsanitize=float-cast-overflow
#  -fsanitize=thread
#  -fsanitize=address
CC=gcc
CFLAGS='-Wall -Wextra -Wvla -g -fsanitize=address -fsanitize=undefined -fsanitize=float-cast-overflow -fsanitize=float-divide-by-zero  -march=native -O3 -fno-omit-frame-pointer'

# From xz's manual page:
#                     Preset   DictSize   CompCPU   CompMem   DecMem
#                      -0e     256 KiB       8        4 MiB    1 MiB
#                      -1e       1 MiB       8       13 MiB    2 MiB
#                      -2e       2 MiB       8       25 MiB    3 MiB
#                       ... useless option, deleted ...
#                      -4e       4 MiB       8       48 MiB    5 MiB
#                       ...           ...           ...
#                      -6e       8 MiB       8       94 MiB    9 MiB
#                      -7e      16 MiB       8      186 MiB   17 MiB
#                      -8e      32 MiB       8      370 MiB   33 MiB
#                      -9e      64 MiB       8      674 MiB   65 MiB
XZ_DEFAULTS='-9 -e -v'

# MANWIDTH=80 gets you 78 characters in a line (?!?). With 7-character
# indentation, the lines in the main text body are 71 characters wide.
# The tcpdump pages are rendered nicely with this setting, but break if
# the value is decremented.
MANWIDTH=80

PS2='	'
HISTCONTROL=ignoredups
HISTFILE=/dev/null
LESSHISTFILE=/dev/null

SHELL=dash
