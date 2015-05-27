typedef struct {
    uint16_t one;
    uint16_t two;
    uint32_t three;

} ARG2_T;

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
        || (arg2.one >> 16) > (arg2.two >> 16)
        || arg2.two > -2) {

        return 0x0C000000D;
    }

    if (arg2.three == (uint32_t)0) {
        return 0;
    }

    if (arg2.one == 0

}
