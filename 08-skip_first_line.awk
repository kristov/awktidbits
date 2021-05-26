BEGIN {
    FS=","
    t = 0;
}
(NR != 1) {
    a[$1] += $2;
    t += $2;
}
END {
    for (i in a) {
        print i "," a[i];
    }
    print "Total," t;
}
