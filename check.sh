#!/bin/bash
mkdir to
rm -rdf to/*
./a.out \
from/41_no_nl to/41_no_nl \
from/41_with_nl to/41_with_nl \
from/42_no_nl to/42_no_nl \
from/42_with_nl to/42_with_nl \
from/43_no_nl to/43_no_nl \
from/43_with_nl to/43_with_nl \
from/63_line to/63_line \
from/63_line_nl to/63_line_nl \
from/64_line to/64_line \
from/64_line_nl to/64_line_nl \
from/65_line to/65_line \
from/65_line_nl to/65_line_nl \
from/alternate_line_nl_no_nl to/alternate_line_nl_no_nl \
from/alternate_line_nl_with_nl to/alternate_line_nl_with_nl \
from/baudelaire.txt to/baudelaire.txt \
from/bible.txt to/bible.txt \
from/big_line_no_nl to/big_line_no_nl \
from/big_line_with_nl to/big_line_with_nl \
from/book-war-and-peace.txt to/book-war-and-peace.txt \
from/create_default_output.py to/create_default_output.py \
from/empty to/empty \
from/empty_one to/empty_one \
from/expected_result to/expected_result \
from/gnl.h to/gnl.h \
from/large_file.txt to/large_file.txt \
from/line.txt to/line.txt \
from/lorem_ipsum to/lorem_ipsum \
from/main.c to/main.c \
from/many_lines to/many_lines \
from/Mr._Justice_Maxell_by_Edgar_Wallace.txt to/Mr._Justice_Maxell_by_Edgar_Wallace.txt \
from/multi_in_one to/multi_in_one \
from/multiple_line_no_nl to/multiple_line_no_nl \
from/multiple_line_with_nl to/multiple_line_with_nl \
from/multiple_nlx5 to/multiple_nlx5 \
from/nl to/nl \
from/n.txt to/n.txt \
from/one_big_fat_line.txt to/one_big_fat_line.txt \
from/over_buffer to/over_buffer \
from/simple to/simple \
from/test.txt to/test.txt \
from/threeliner.txt to/threeliner.txt \
from/void.txt to/void.txt

echo 'Errors:'
echo ''

diff from/41_no_nl to/41_no_nl
diff from/41_with_nl to/41_with_nl
diff from/42_no_nl to/42_no_nl
diff from/42_with_nl to/42_with_nl
diff from/43_no_nl to/43_no_nl
diff from/43_with_nl to/43_with_nl
diff from/63_line to/63_line
diff from/63_line_nl to/63_line_nl
diff from/64_line to/64_line
diff from/64_line_nl to/64_line_nl
diff from/65_line to/65_line
diff from/65_line_nl to/65_line_nl
diff from/alternate_line_nl_no_nl to/alternate_line_nl_no_nl
diff from/alternate_line_nl_with_nl to/alternate_line_nl_with_nl
diff from/baudelaire.txt to/baudelaire.txt
diff from/bible.txt to/bible.txt
diff from/big_line_no_nl to/big_line_no_nl
diff from/big_line_with_nl to/big_line_with_nl
diff from/book-war-and-peace.txt to/book-war-and-peace.txt
diff from/create_default_output.py to/create_default_output.py
diff from/empty to/empty
diff from/empty_one to/empty_one
diff from/expected_result to/expected_result
diff from/gnl.h to/gnl.h
diff from/large_file.txt to/large_file.txt
diff from/line.txt to/line.txt
diff from/lorem_ipsum to/lorem_ipsum
diff from/main.c to/main.c
diff from/many_lines to/many_lines
diff from/Mr._Justice_Maxell_by_Edgar_Wallace.txt to/Mr._Justice_Maxell_by_Edgar_Wallace.txt
diff from/multi_in_one to/multi_in_one
diff from/multiple_line_no_nl to/multiple_line_no_nl
diff from/multiple_line_with_nl to/multiple_line_with_nl
diff from/multiple_nlx5 to/multiple_nlx5
diff from/nl to/nl
diff from/n.txt to/n.txt
diff from/one_big_fat_line.txt to/one_big_fat_line.txt
diff from/over_buffer to/over_buffer
diff from/simple to/simple
diff from/test.txt to/test.txt
diff from/threeliner.txt to/threeliner.txt
diff from/void.txt to/void.txt
echo 'If nothing is displayed, nothing is wrong.'
echo ''
