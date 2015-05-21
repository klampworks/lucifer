#include <stdint.h>

typedef struct {
    uint8_t one;
    uint8_t two;
    uint16_t three;

    uint8_t gap1[8];

    uint32_t four; /* Offset 12 */
    uint32_t five; /* Offset 16 */ 

    uint8_t gap2[12];

    uint32_t six; /* Offset 28 */
} ARG1_T;

void KeInitializeDpc(ARG1_T *arg1, uint32_t arg2, uint32_t arg3)
{
    arg1->six &= 0;
    arg1->one = 0x13;
    arg1->two = 1;
    arg1->three = 0;
    arg1->four = arg2;
    arg1->five = arg3;
}
