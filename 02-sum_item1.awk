BEGIN {
    FS=","
}
$1 == "Item1" {
    x += $2;
}
END {
    print x
}
