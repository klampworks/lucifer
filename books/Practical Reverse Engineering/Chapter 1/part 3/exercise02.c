
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

    int tmp = Process32First(h, &p);
    do {
        if (stricmp(p.szExeFile, unknown_string) == 0)
            break;

        tmp = Process32Next(h, &p);
    } while (tmp != 0);

    if (tmp != 0 && p.th32ParentProcessID == p.th32ProcessID)
        return 0;
        
    if (fdwReason == DLL_PROCESS_ATTACH)
        CreateThread(0, 0, "???", 0, 0, 0);
                
    return 1;
}

