EZ Tmux 
========
>Tmux is a terminal multiplexer command line utility that lets you create/control multiple shells from a single screen. One of its most powerful features is the ability to send keystrokes combinations into the shells automatically. Added to that is the feature that lets me create internal environment variables through which I can convert a non-interactive reverse shell into a interactive one.


The manual process
===================

[![asciicast](https://asciinema.org/a/426655.svg)](https://asciinema.org/a/426655)



The final result
=================
[![asciicast](https://asciinema.org/a/426667.svg)](https://asciinema.org/a/426667)

>Now every time you get a non-interactive shell, you can simply hit Ctrl-aqq in order to trigger the first binding (Ctrl-aq) and then sending the second part (Ctrl-q).


Key bindings
-----------
| tmux key     | Description                                                                                                                                                                                                                   | iTerm2 key |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| C-a          | Default prefix, used instead of "C-b". Same prefix is used in screen program, and it's easy to type. The only drawback of "C-a" is that underlying shell does not receive the keystroke to move to the beginning of the line. | -          |
| <prefix> C-r | Reload tmux configuration from ~/.tmux.conf file                                                                                                                                                                              | -          |
| <prefix> r   | Rename current window                                                                                                                                                                                                         | -          |
| <prefix> R   | Rename current session                                                                                                                                                                                                        | -          |
| <prefix> _   | Split new pane horizontally                                                                                                                                                                                                   | ⌘⇧D        |
| <prefix> |   | Split new pane vertically                                                                                                                                                                                                     | ⌘D         |
| <Ctrl> ←     | Select pane on the left                                                                                                                                                                                                       | ⌘⌥←        |
| <Ctrl> →     | Select pane on the right                                                                                                                                                                                                      | ⌘⌥→        |
| <Ctrl> ↑     | Select pane on the top                                                                                                                                                                                                        | ⌘⌥↑        |
| <Ctrl> ↓     | Select pane on the bottom                                                                                                                                                                                                     | ⌘⌥↓        |
| <prefix> C-← | Resize pane to the left                                                                                                                                                                                                       | ^⌘←        |
| <prefix> C-→ | Resize pane to the right                                                                                                                                                                                                      | ^⌘→        |
| <prefix> C-↑ | Resize pane to the top                                                                                                                                                                                                        | ^⌘↑        |
| <prefix> C-↓ | Resize pane to the bottom                                                                                                                                                                                                     | ^⌘↓        |
| <Shift> →;   | Move to next window                                                                                                                                                                                                           | ⌘⇧]        |
| <Shift> ←;   | Move to previous window                                                                                                                                                                                                       | ⌘⇧[        |
| <prefix> x   | Kill current pane                                                                                                                                                                                                             | ⌘W         |
| <prefix> X   | Kill current window                                                                                                                                                                                                           | ⌘⌥W        |
| <prefix> C-x | Kill other windows but current one (with confirmation)                                                                                                                                                                        | -          |
| <prefix> Q   | Kill current session (with confirmation)                                                                                                                                                                                      | -          |
| <prefix> d   | Detach from session                                                                                                                                                                                                           | -          |
| <prefix> D   | Detach other clients except current one from session                                                                                                                                                                          | -          |

