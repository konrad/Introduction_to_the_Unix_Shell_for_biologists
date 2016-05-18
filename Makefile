pdf:
	pandoc \
	  -o Handout.pdf \
          --toc \
	   --latex-engine xelatex \
	   --variable mainfont="DejaVu Sans" \
	   --variable sansfont="DejaVu Sans" \
	   -V geometry:"top=2cm, bottom=2.0cm, left=2.5cm, right=2.5cm" \
	  Handout.md

example_files:
	mkdir -p unix_course_files
	echo "This file\ncontains three\nlines." \
	  > unix_course_files/three_lines.txt
	echo "This file\ncontains two lines." \
	  > unix_course_files/two_lines.txt
	echo "999\n1\n55\n7777\n3\n42\n555\n23" \
	  > unix_course_files/unsorted_numbers.txt
	echo "ATGTGGTAGTAGTATGAAATGTGA" \
	  > unix_course_files/DNA.txt
	echo "Name\tStart\tStop\tStrand" \
	  > unix_course_files/genes.csv
	echo "dnaA\t1\t1416\t+" \
	  >> unix_course_files/genes.csv
	echo "gyrA\t6479\t8908\t+" \
	  >> unix_course_files/genes.csv
	echo "rpsF\t29330\t29788\t+" \
	  >> unix_course_files/genes.csv
	echo "yidC\t3986072\t3987691\t-" \
	  >> unix_course_files/genes.csv
	echo "tRNA\ntRNA\ntRNA\nrRNA\nrRNA\nmRNA\nmRNA\nmRNA\nmRNA" \
	  > unix_course_files/redundant.txt
	wget -cO unix_course_files/origin_of_species.txt \
          http://www.gutenberg.org/cache/epub/22764/pg22764.txt     

new_release:
	@echo "* Commit changes e.g. 'git commit -m \"Set version to 1.0\"'"
	@echo "* Tag the commit e.g. 'git tag -a v1.0 -m \"version v1.0\"'"
	@echo "* Generate a new release based on this tag at"
	@echo "  https://github.com/konrad/Introduction_to_the_Unix_Shell_for_biologists/releases"
