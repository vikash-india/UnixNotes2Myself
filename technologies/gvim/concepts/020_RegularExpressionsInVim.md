# Description: Regular Expressions in Vim
-----------------------------------------

### Metacharacters
```
.           # Any single character except newline.
*           # Zero or more occurrences of any character.
```

### Escaped Metacharacters
- The escape character (\) changes the meaning of next character.
- The pattern \$ searches for $ character instead using $ as an anchor for the end of line.
- Similarly, \. or \* or \\ matches the character . or * or \ respectively instead of applying its special meaning.

```
\s          # Whitespace character.
\S          # Non-whitespace character.
\d          # Digit.
\D          # Non-digit.
\x          # Hex digit.
\X          # Non-hex digit.
\o          # Octal digit.
\O          # Non-octal digit.
\h          # Head of word character (a,b,c...z,A,B,C...Z and _).
\H          # Non-head of word character.
\p          # Printable character.
\P          # Like \p, but excluding digits.
\w          # Word character.
\W          # Non-word character.
\a          # Alphabetic character.
\A          # Non-alphabetic character.
\l          # Lower case character.
\L          # Non-lower case character.
\u          # Upper case character.
\U          # Non-uppercase character.
```

### Character Class
```
[...]       # Character class. Any single character specified in the set.
[^...]      # Negated character class. Any single character NOT specified in the set.
```

### Anchors
```
^           # Anchor for matching at the beginning of line.
$           # Anchor for matching at the end of line.

\<          # Anchor for matching at the beginning of a word.
\>          # Anchor for matching at the end of a word.
```

### Quantifiers
- Both n and m should be positive integers (ie > 0)

```
*           # Match 0 or more occurrences of preceding characters, ranges or metacharacters.
\+          # Match 1 or more occurrences of preceding characters, ranges or metacharacters.
\=          # Match 0 or 1 occurrences of preceding characters, ranges or metacharacters.
\{n,m}      # Match from n to m occurrences of preceding characters, ranges or metacharacters.
\{n}        # Match exactly n occurrences of  preceding characters, ranges or metacharacters.
\{,m}       # Match at most m (from 0 to m) occurrences of  preceding characters, ranges or metacharacters.
\{n,}       # Match at least n occurrences of  preceding characters, ranges or metacharacters.
```

### Groupings and Backreferences
```
\(...\)     # Logical grouping or capture or back references.
\n          # Contents of nth grouping.

Examples
\1          # the matched pattern in the first pair of \(\)
\2          # the matched pattern in the second pair of \(\)
...
\9          # the matched pattern in the ninth pair of \(\)


&           # the whole matched pattern
\L          # the following characters are made lowercase
\0          # the whole matched pattern
\U          # the following characters are made uppercase
\E          # end of \U and \L
\e          # end of \U and \L
\r          # split line in two at this point
\l          # next character made lowercase
~           # the previous substitute string
\u          # next character made uppercase
```

### Alternations
```
\|          # Alternation
```
