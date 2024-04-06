# mystic-termlib
A fast, light, and fluenty terminal escape sequence library for bash.

Download current: https://raw.githubusercontent.com/padthaitofuhot/mystic-termlib/main/mystic-termlib.bash

Mystic Termlib uses a blend of VTx, ANSI, and non-standard escape sequences for controlling terminal colors, cursor movement, xterm window headers, and more.  It is set up to be used with bash's PROMPT_COMMAND= environment variable (see MYSTIC_PC_START and MYSTIC_PC_STOP), meaning it encapsulates escape sequences in bytes which prevent bash from counting escape sequence bytes as readable characters for the purposes of knowing a prompt's line length, which in turn prevents issues with line editing -- for example, backspacing over the prompt.

It is assumed these escape sequences are broadly comprehended by any "modern" terminals, including some vty devices.  If your daily-driver terminal chokes on these, please file an issue.

PRs are always welcome.

References:
* https://en.wikipedia.org/wiki/ANSI_escape_code
