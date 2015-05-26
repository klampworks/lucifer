
ARG2_T RtlValidateUnicodeString(void *arg1, ARG2_T arg2)
{
    if (!arg1) {
        return 0x0C000000D;
    } 

    if (!arg2) {
        return 0;
    }

    if (arg2.one & 1 == 0 
        || arg2.two & 1 == 0 
        || arg2.one > arg2.two
        || arg2.two > -2) {

        return 0x0C000000D;
    }

    if arg2.three == 0...
        return ...
}
