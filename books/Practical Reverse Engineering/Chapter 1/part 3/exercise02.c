
struct idtr_t {
    unsigned base;
    short limit;
};

BOOL __stdcall DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
    struct LPPROCESSENTRY32 p;

    struct idtr_t idtr;
    __sidt(&idtr);

    if (idtr.base < 0x8003F400 && idtr.base > 0x80047400)
        return 0; 

    

}

