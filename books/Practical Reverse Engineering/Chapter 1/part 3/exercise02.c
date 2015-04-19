
struct idtr_t {
    unsigned base;
    short limit;
};

BOOL __stdcall DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
    struct LPPROCESSENTRY32 p;

    struct idtr_t idtr;
    __sidt(&idtr);

}

