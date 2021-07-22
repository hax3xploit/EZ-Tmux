EZ Tmux 
========
>Tmux is a terminal multiplexer command line utility that lets you create/control multiple shells from a single screen. One of its most powerful features is the ability to send keystrokes combinations into the shells automatically. Added to that is the feature that lets me create internal environment variables through which I can convert a non-interactive reverse shell into a interactive one.


The manual process
===================

[![asciicast](https://asciinema.org/a/426770.svg)](https://asciinema.org/a/426770)



The final result
=================
[![asciicast](https://asciinema.org/a/426667.svg)](https://asciinema.org/a/426667)

>Now every time you get a non-interactive shell, you can simply hit Ctrl-aqq, in order to trigger the first binding (Ctrl-aq) and then sending the second part (Ctrl-q).

Installation
-------------
Prerequisites:
- tmux >= "v2.4"


To install tmux-config:
```
$ git clone https://github.com/hax3xploit/EZ-Tmux
$ ./EZ-Tmux/install.sh
```
Key bindings
------------


<table>
    <tr>
        <td nowrap><b>tmux key</b></td>
        <td><b>Description</b></td>
        <td><b>iTerm2 key</b></td>
    </tr>
    <tr>
        <td nowrap><code>C-a</code></td>
        <td>Default prefix, used instead of "C-b". Same prefix is used in screen program, and it's easy to type. The only drawback of "C-a" is that underlying shell does not receive the keystroke to move to the beginning of the line.
        </td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; Ctrl-q</code></td>
        <td>Execute python's shell.</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>Ctrl-q</code></td>
        <td>Reverse shell to a fully interactive TTY</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; Z</code></td>
        <td>Rename current session</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; z</code></td>
        <td>Rename current window</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; r</code></td>
        <td>Reloads the configuration/td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; _</code></td>
        <td>Split new pane horizontally</td>
        <td>⌘⇧D</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; |</code></td>
        <td>Split new pane vertically</td>
        <td>⌘D</td>
    </tr>
    <tr>
        <td><code>&lt;Ctrl&gt; ←</code></td>
        <td>Select pane on the left</td>
        <td>⌘⌥←</td>
    </tr>
    <tr>
        <td><code>&lt;Ctrl&gt; →</code></td>
        <td>Select pane on the right</td>
        <td>⌘⌥→</td>
    </tr>
    <tr>
        <td><code>&lt;Ctrl&gt; ↑</code></td>
        <td>Select pane on the top</td>
        <td>⌘⌥↑</td>
    </tr>
    <tr>
        <td><code>&lt;Ctrl&gt; ↓</code></td>
        <td>Select pane on the bottom</td>
        <td>⌘⌥↓</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt;C-←</code></td>
        <td>Resize pane to the left</td>
        <td>^⌘←</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt;C-→</code></td>
        <td>Resize pane to the right</td>
        <td>^⌘→</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt;C-↑</code></td>
        <td>Resize pane to the top</td>
        <td>^⌘↑</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt;C-↓</code></td>
        <td>Resize pane to the bottom</td>
        <td>^⌘↓</td>
    </tr>
    <tr>
        <td><code>&lt;Shift&gt; →</code></td>
        <td>Move to next window</td>
        <td>⌘⇧]</td>
    </tr>
    <tr>
        <td><code>&lt;Shift&gt; ←</code></td>
        <td>Move to previous window</td>
        <td>⌘⇧[</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; x</code></td>
        <td>Kill current pane</td>
        <td>⌘W</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; X</code></td>
        <td>Kill current window</td>
        <td>⌘⌥W</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt;C-x</code></td>
        <td>Kill other windows but current one (with confirmation)</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; Q</code></td>
        <td>Kill current session (with confirmation)</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; d</code></td>
        <td>Detach from session</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; D</code></td>
        <td>Detach other clients except current one from session</td>
        <td>-</td>
    </tr>
</table>

