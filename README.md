# VIM Shortcuts

## Navigation
`j` down

`k` up

`h` left

`l` right

`$` to the end of line

`^` to the beginning of the first word

`0` move the the beginning of the line

`{` to previous empty line

`}` to next empty line

`gg` to the beginning of the file

`G` or `:$` to the end of the file

`<c-f>` forward page

`<c-b>` back page

`w` or `W` next word

`b` or `B` beginning of word

`e` or `E` end of word

`z<enter>` scroll to let the current line at the top of the screen

`18gg` or `18G` or `:18` go to line 18

`<c-w>` then `hjkl` switch windows

`<leader>d` go to definition of a python object with jedi-vim. `<leader>` is mapped to `\` by default.

`<c-o>` go back to where the cursor was just now.

`<c-i>` go forward if you used go back.

`<c-]>` go to the tag. Usually used in :help.

## Modify
`c` change

`y` copy

`d` delete

`gq` format to a paragraph with textwidth.

### Registers

`"` + `[register_name]`.

The register name can be 0-9 or a-z, or some other special ones.

`"_` the black hole register.



## Select

`v` select mode

`V` select lines

`<c-v>` select blocks



## Replace

`:%s/origin/destiny/g` replace all. `%` means the entire file. Without it, it would only do the current line.

`:%s/origin/destiny/gc` replace interactively.

You can also use register to copy paste things for the word you want to search and replace. Just select and use `y` to copy, 
and paste with `<c-r>"`.



## Comment

`<c-v>` to select a block. `I` to insert a `//` or `#` at the beginning of the line.



## Command

`:e` open

`:w` save

`:x` save & quit

`:q` quit

`:make` makefile

`:cwindow` or `:cw` quickfix window

`:r` insert a file content to curser

`:set nu` turn on line number.

`:set nonu` turn of line number.

`:set nu!` toggle line number.

Replace `nu` with any other option.



## Windows

`<C-w>n` new horizontal split (editing a new empty buffer)

`<C-w>s` split window horizontally (editing current buffer)

`<C-w>v` vsplit window vertically (editing current buffer)

`<C-w>c` close window

`<C-w>o` close all windows, leaving :only the current window open



za //fold and unfold code blocks

<c-n> //open and close nerd tree

\+g //go to definition

<c-o> //go back

<c-i> //go forward

gt //next tab

gT //previous tab



## NerdTree

for directory:

p //parent

x // close

o // open

for file:

o // open

s //split

gs //silent split



## Pytest

run pytests

py.test tests_directory/foo.py tests_directory/bar.py -k 'test_001 or test_some_other_test'

With the Pytest plugin:

:Pytest project

:Pytest function

:Pytest class

:Pytest method



To show the result or the failed tests:

:Pytest fail

:Pytest session



## Search with CtrlP

To search for files and open:

`<c-p>`



## Buffers

switch between buffers:

:ls " show buffers

<c-6> " switch between the current one and the last one

4<c-6> " switch to buffer number 4

:bd close buffer
