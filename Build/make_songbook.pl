#!/usr/bin/perl -w
use strict;

my $source_dir = shift(@ARGV);
unless($source_dir) {
	print "Usage: $0 [source_directory]\n";
	exit 1;
}

print "Creating song book $source_dir.pdf from $source_dir.\n";

open('SOURCE', '>', "$source_dir.tex") || die "Can't open $source_dir.tex for output!";
print SOURCE <<__END_LATEX_HEADER__
\\documentclass{article}
\\usepackage[letterpaper,top=0.5in, bottom=0.5in, left=1in, right=0.5in]{geometry}
\\usepackage[chorded]{songs}
\\usepackage[utf8x]{inputenc}
\\usepackage[T2A]{fontenc}

\\definecolor{lightgray}{RGB}{150,150,150}
\\noversenumbers
\\MultiwordChords
\\songcolumns{2}
\\renewcommand{\\printchord}[1]{\\rmfamily\\small\\color{lightgray}\\bf#1}
\\newindex{titleidx}{titleidx}
\\begin{document}
%\\thispagestyle{empty}
%\\setlength{\\songnumwidth}{0pt}
\\setlength{\\parindent}{0pt}
\\begin{songs}{}
__END_LATEX_HEADER__
;
close('SOURCE');

my @files = `ls \"$source_dir\"`;
chomp @files;

my $processed_count = 0;
foreach my $file (@files){
	next unless $file =~ /tex$/;
	print "   - Adding $file\n";
	`cat \"$source_dir\"/\"$file\" >> \"$source_dir.tex\"`;
	$processed_count++;
}

open('SOURCE', '>>', "$source_dir.tex") || die "Can't open $source_dir.tex for output!";
print SOURCE <<__END_LATEX_FOOTER__
\\end{songs}
\\end{document}
__END_LATEX_FOOTER__
;
close('SOURCE');

print "$processed_count LaTeX source file(s) processed.\n";

