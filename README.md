Songbook
========

A book of songs for singing from.

This is not my beautiful house!
-------------------------------

Do you want to add a song? 

Copy any of the .tex files under `Songs` and edit to your liking. Don't use unicode in your file names. The structure of each song is as follows:

* `\beginsong` begins each song, followed by `{Author - Song Name}`. If it's a cover, add `[by={As performed by whoever}]` to the end.
* `\gtab{Chord name}{Chord fingering}` tells LaTeX how to build those pretty chord charts. Repeat as needed. Make sure you use uppercase Xs where you don't want a string to be played. Lowercase xs tell the typesetter that there isn't a string there so don't print a string.
* `\beginverse` and `\endverse` begin and end verses. Don't put any text outside of those markers.
* `\beginchorus` and `\endchorus` do the same, but with the chorus. It puts a bold black line next to the words so people know to come back to that part of the song later rather than singing the word "Chorus".
* `\[A]` puts the guitar chord 'A' above the word you place it next to. Same for F#minDim7.
* If you have a section with no lyrics, use `{\nolyrics Intro: \[F] ...}` so it doesn't waste typesetting space.
* Any line beginning with a '%' will not be typeset into the final file. It's a comment.
* `\endsong` ends each song.

Once you have a file under the `Songs/` directory in the format of `Artist - Title.tex`, then you'll want to add a line that looks like this to the correct place in `Songs.tex`:

	\include{{"Songs/Artist - Title"}}

At this point, either commit your changes or send a pull request. If you want to compile a new version of the PDF, don't forget to bump the version number on the title page. Or just email Danne and ask her to do it. That works, too.

This is not my beautiful wife!
------------------------------

Do you want your own song book? 

Create a file in the base directory based off the structure of `Songs.tex`. You probably don't want to change anything other than the includes here. Be sure to remove ".tex" from the end of your include file names. Oh, and you remembered not to use unicode in your song file names, right?

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

	`$ texi2pdf Songs.tex`

6. MOOP sweep! This is a Leave No Trace songbook build procedure.

	`$ rm *.aux *.log *.out *.sxc *.toc; rm Songs/*.aux Songs/*.log Songs/*.sxc`

6. Print and bind the book, then sing from the book of songs for singing from.

Same as it ever was
-------------------

This REPLy bit is here so you can copy and paste it while formatting your songs:

	`rm *.aux *.log *.out *.sxc *.toc; texi2pdf Songs.tex && open Songs.pdf`

Same as it ever was
-------------------

Need help? Contact Danne Stayskal <danne@stayskal.com>.
