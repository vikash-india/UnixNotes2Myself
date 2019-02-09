# Description: Named Markers in Vim
-----------------------------------

### Named Markers
- Named markers are used to mark locations in a file and give it a name.
- These named markers are then used to return to these locations when required.
- Markers can also be used as limits for ranges.
- Any lower case letter from a to z or upper case letter A to Z can be used as a named marker.
- Vim, in contrast to Vi, distinguishes between upper case letters and lower case letters.
- Named markers are set only during the current vim session and are not stored in the file.

```
mc          # Set marker c on the current line.

'c          # Use Apostrophe (') to move the cursor to the first character of the line marked with c.
`c          # Use Backquote (`) to move the cursor to the character marked with c.

``          # Use Backquotes (``) to return to the exact position of the previous mark.
''          # Use Apostrophes ('') to return to the beginning of line of the previous mark.
```
