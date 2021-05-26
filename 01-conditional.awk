BEGIN {
    FS=","
}
{
    if ($1 == "Item1" && $2 == "600") {
        print "Item1,found";
    }
}
