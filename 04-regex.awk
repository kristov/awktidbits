BEGIN {
    FS=","
}
/Item/ {
    print "Found item: " $1 " with value of " $2
}
