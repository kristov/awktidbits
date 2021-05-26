BEGIN {
    FS=","
}

# $ echo "Item1" | md5sum
# 5a5118b9d0ca82b6a987b08941ef079f
# $ echo -n "Item1" | md5sum
# 85548eb013e5698455ca0fcd3b423330

{
    orig = $1; # $1 gets overridden below
    cmd = "echo -n \"" $1 "\" | md5sum";
    cmd | getline; md5 = $1;
    close(cmd)
    printf("%s,%s,%d\n", orig, substr(md5,1,32), $2);
}
