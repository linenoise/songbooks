Songbook
========

A book of songs for singing from.

This is not my beautiful house!
-------------------------------

Do you want to add a song? Copy any of the .tex files under `Party Songs` and edit to your liking. The structure of each song is as follows:

* `\beginsong` begins each song, followed by `{Author - Song Name}`. If it's a cover, add `[by={As performed by whoever}]` to the end.
* `\gtab{Chord name}{Chord fingering}` tells LaTeX how to build those pretty chord charts. Repeat as needed.
* `\beginverse` and `\endverse` begin and end verses. Don't put any text outside of those markers.
* `\beginchorus` and `\endchorus` do the same, but with the chorus. It puts a bold black line next to the words so people know to come back to that part of the song later rather than singing the word "Chorus".
* `\[A]` puts the guitar chord 'A' above the word you place it next to. Same for F#minDim7.
* If you have a section with no lyrics, use `{\nolyrics Intro: \[F] ...}` so it doesn't waste typesetting space.
* Any line beginning with a '%' will not be typeset into the final file. It's a comment.
* `\endsong` ends each song.

This is not my beautiful wife!
------------------------------

Do you want your own song book? Create a file in the base directory based off the structure of `Party Songs.tex`. You probably don't want to change anything other than the includes here. Be sure to remove ".tex" from the end of your include file names.

Same as in the song files, any line starting with '%' is just a comment and will not be typeset in the final file.

How do I work this?
-------------------

1. Have [LaTeX](http://www.latex-project.org/get/) installed. On Linux, your package manager has this. On OSX, use [BasicTeX](https://www.tug.org/mactex/morepackages.html). On windows, use [MiKTeX](http://miktex.org/).
2. Open your terminal or shell.
3. Install the [songs](http://www.ctan.org/tex-archive/macros/latex/contrib/songs/) and [utf8x](package.

	`$ sudo tlmgr install songs`

4. Clone this repository and `cd` into the folder containing the book of songs for singing from.

	`$ git clone git@github.com:linenoise/songbook`

5. Compile the PDF from source.

	`$ texi2pdf Party\ Songs.tex`

6. Print and bind the book, then sing from the book of songs for singing from.
