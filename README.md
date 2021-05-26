# AWK Cheatsheet

AWK is awesome with a capital `A`. This is a collection of tidbits that I need to keep around.

    awk -f <example> data.csv
    cat data.csv | awk -f <example>

*REMEMBER*: If you pipe things together it doesn't need to touch the disk!

    select_from_gcp.sh | awk -f script1.awk | awk -f script2.awk | write_to_gcp.sh

Although it does need to shift data over the network :-/

Need to partition the data?

    grep '^Item[12]' data.csv | awk -f 03-group_by_rollup.awk

