BEGIN {
    FS=","
}
{
    sp=$2 * 0.5;
    {
        printf("%s : %0.2f : %d\n", $1, sp, $2);
    }
}
