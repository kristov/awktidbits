BEGIN {
    FS=","
}
{
    printf("%s,%s,%d\n", substr($1,4,5), tolower($1), $2);
}
