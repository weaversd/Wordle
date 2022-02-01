# Wordle
My own little version of wordle in R

## To play:
* Open 'play.R' and edit `working_directory` to be the path to this directory.
* Highlight and run 'play.R'
* Run `play()` in the console

Currently, you can set the number of allowed guesses to any integer, and the number of letters in the unknown word to any integer between 3 and 7.  
Example: `play(letters = 6, guesses = 7)`  
The default is 5 letters, 6 guesses.

## Gameplay:
Your guesses must be lowercase, contain only letters, be the correct number of letters, and be on the master word list (which is pretty much every English word... although I haven't really tested it).  
If a letter is in the correct position, it will be capitalized and surrounded by brackets: `{E}`  
If a letter is in the word, but not in the correct position, it will be capitalized with an asterisk: ` E*`

For example, if your guess is `stair` and the word is `stray`, the output would display `{S} {T}  A*   i   R*`





Updates coming soon
