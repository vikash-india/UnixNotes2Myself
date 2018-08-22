# Description: Basic Movement Commands in Vim
---------------------------------------------

### Single movements.
```
h           # Move left 1 character.
j           # Move down 1 line.
k           # Move up 1 line.
l           # Move right 1 character.
```
#### Note
- Enter key can be used to go down 1 line.
- Backspace key can be used to go back 1 character.
- Arrow keys also work if there are mapped correctly. But arrow keys are way too slow on big files.

### Numeric arguments to single movement commands.
```
N<Motion Command>

5h          # Move left 5 characters.
100j        # Move down 100 lines.
21k         # Move up 21 lines.
7l          # Move right 7 characters.
```
#### Note
- Any movement commands can be preceded by a number N to repeat the movement N times.
