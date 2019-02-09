# Description: Mapping Keys in Vim
----------------------------------

### Mapping Keys
- The map command is used to bind key(s) as a shortcut for repeating a sequence of other keys or commands.
- The map command is similar to abbreviation command except that it defines a macro for Vim’s command mode instead of
  insert mode.

### Define maps using :map command.
- The simple syntax to define a map is `:map key command_sequence`.
- Following keys in Vim are available for user-defined maps
    * Letters       : g, K, q, V, and v
    * Control keys  : ^A, ^K, ^O, ^W, and ^X
    * Symbols       : _, *, \, and =

```
# Map normal keys like g, K, q etc.
:map K :cd /home/dilbert/work<ENTER>

# Map control characters like CTRL-A, CTRL-B etc.
# Three control characters that must be escaped with a ^V. They are ^T, ^W, and ^X
:map ^X :pwd<ENTER>

# Same as above.
:map <C-X> :pwd<ENTER>

# Map function keys like F2, F3...F12.
:map <F-2> :pwd

# Same as above.
:map #2 :pwd

# Map special keys like HOME, END, PAGE UP, and PAGE DOWN
:map <Home> :pwd<ENTER>

# Same as above
:map ^V<Home> :pwd<CR>
```

### Remove a map definition for the key K.
```
:unmap K
```

### List all key mappings.
```
# Display maps defined for normal, visual, select or operator pending mode.
:map

# Display maps defined for insert mode or command-line mode.
:map!
```

### Note
- The general syntax for :map command

```
[command] [attribute] [LHS] [RHS]
where
    [command]   - One of ':map', ':map!', ':nmap', ':vmap', ':imap', ':cmap', ':smap', ':xmap', ':omap', ':lmap', etc.
    [attribute] - Optional and one or more of the following: <buffer>, <silent>, <expr> <script>, <unique>, <special>.
                  More than one attribute can be specified to a map.
    [LHS]       - Left hand side, is a sequence of one or more keys that you will use in your new shortcut.
    [RHS]       - Right hand side, is the sequence of keys that the [LHS] shortcut keys will execute when entered.

Details of various commands are as follows
    :cmap - Command-line mode map. Defined using ':cmap' or ':cnoremap'.
    :imap - Insert mode map. Defined using ':imap' or ':inoremap'.
    :nmap - Normal mode map. Defined using ':nmap' or ':nnoremap'.
    :omap - Operator pending mode map. Defined using ':omap' or ':onoremap'.
    :smap - Select mode map. Defined using ':smap' or ':snoremap'.
    :vmap - Visual and select mode map. Defined using ':vmap' or ':vnoremap'.
    :xmap - Visual mode map. Defined using ':xmap' or ':xnoremap'.
    !     - Insert and command-line mode map. Defined using 'map!' or 'noremap!'.
```

- The :unmapping command

```
cunmap - Unmap a command-line mode map.
iunmap - Unmap an insert and replace mode map.
nunmap - Unmap a normal mode map.
ounmap - Unmap an operator pending mode map.
sunmap - Unmap a select mode map.
vunmap - Unmap a visual and select mode map.
xunmap - Unmap a visual mode map.
```

- Clear all maps

```
mapclear  - Clear all normal, visual, select and operating pending mode maps.
mapclear! - Clear all insert and command-line mode maps.

cmapclear - Clear all command-line mode maps.
imapclear - Clear all insert mode maps.
nmapclear - Clear all normal mode maps.
omapclear - Clear all operating pending mode maps.
smapclear - Clear all select mode maps.
vmapclear - Clear all visual and select mode maps.
xmapclear - Clear all visual mode maps.
```

### TODO
- Read this [URL](http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_%28Part_1%29)
