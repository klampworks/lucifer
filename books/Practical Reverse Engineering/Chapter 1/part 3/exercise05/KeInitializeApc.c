typedef struct {

} ARG1_T;

typedef struct {

} ARG2_T;

ARG1_T* KeInitializeApc(ARG1_T *arg1, ARG2_T *arg2, uint8_t arg3)
{

    arg1->one = (uint8_t)0x12; /* Offset 0 */
    arg1->two = (uint8_t)0x30; /* Offset 16 */

    if (arg3 == 2) {
        arg3 = (uint8_t)arg2->one; /* Offset 308 */
    }

    arg1->three = (void *)arg2; /* Offset 8 */
    arg1->four = (uint32_t)arg4; /* Offset 20 */
    arg1->five = (uint8_t)arg3; /* Offset 44 */
    arg1->six = (uint32_t)arg5; /* Offset 24 */
    arg3 = 0;
    arg1->seven = (uint32_t)arg6; /* Offset 28 */

    if (arg6 != 0) {
        arg1->seven = (uint8_t)arg7; /* Offset 45 */
        arg1->eight = (uint32_t)arg8; /* Offset 32 */
    } else {
        arg1->seven = (uint8_t)0; /* Offset 45 */
        arg1->eight = (uint32_t)0; /* Offset 32 */
    }

    arg1->nine = (uint8_t)0; /* Offset 46 */
    return arg1;
}
