1. Repeat the walk-through by yourself. Draw the stack layout, including
parameters and local variables. 

; BOOL __stdcall DllMain(HINSTANCE hinstDLL, DWORD
fdwReason,
    ; LPVOID lpvReserved)

; This is a function which takes 12 bytes worth of arguments.
_DllMain@12 proc near

; Function prolog.
push ebp
mov ebp, esp

; Create 130 bytes of local storage (local variables).
sub esp, 130h

push edi
; Store Interrupt Descriptor Table Register
; fword ptr casts this value to a 48bit pointer.
; http://x86.renejeschke.de/html/file_module_x86_id_295.html
sidt fword ptr [ebp-8]

; Copy the IDT base address we received in the previous instruction into eax.
mov eax, [ebp-6]

; Check that the IDT base address falls within the given range.
; Jump to loc_10001C88 if not.
cmp eax, 8003F400h
jbe short loc_10001C88 (line 18)
cmp eax, 80047400h
jnb short loc_10001C88 (line 18)

; IDT base address is in the given range, return 0.
xor eax, eax
pop edi
mov esp, ebp
pop ebp
retn 0Ch

loc_10001C88:

; Clear eax.
xor eax, eax

; Set the rep count to 0x49.
mov ecx, 49h

lea edi, [ebp-12Ch]         ; Second argument
mov dword ptr [ebp-130h], 0 ; Set the start (or end?) of the local storage to 0.
push eax                    ; 0
push 2

; Store String Double
; http://x86.renejeschke.de/html/file_module_x86_id_306.html
; Store eax at address edi.
; Set a chunk of the stack local storage to 0.
rep stosd

; Arguments
; th32ProcessID 0 (ignored)
; dwFlags       2 (Includes all processes in the system in the snapshot). 
call CreateToolhelp32Snapshot

; Copy the returned handle into edi.
mov edi, eax

; Return zero if the handle is equal to -1 (INVALID_HANDLE_VALUE).
cmp edi, 0FFFFFFFFh
jnz short loc_10001CB9 (line 35)
xor eax, eax
pop edi
mov esp, ebp
pop ebp
retn 0Ch

loc_10001CB9:

lea eax, [ebp-130h]
push esi    ; ???
push eax    ; Address of local varable.
push edi    ; Handle to snapshot.

; Set the dwSize member of this struct to 0x128.
mov dword ptr [ebp-130h], 128h

; Arguments:
; hSnapshot         edi, handle to snapshot
; LPPROCESSENTRY32  Address of local variable.
call Process32First

test eax, eax
jz short loc_10001D24 (line 70)
; If return value was not 0 do this...

; Copy the address of stricmp into esi.
mov esi, ds:_stricmp

; Copy the address of a field in the the local LPPROCESSENTRY32 struct.
; This appears to be somewhere in the middle of the szExeFile field.
lea ecx, [ebp-10Ch]

; Do a case-insensitive string comparison.
push 10007C50h      ; ??? Address of an unknown string.
push ecx            ; Process path inside LPPROCESSENTRY32 structure.
call esi ; _stricmp

; Clean up the stack after the stricmp call. 
add esp, 8

test eax, eax
jz short loc_10001D16 (line 66)

; If the strings were not equal do this...
loc_10001CF0:

; Get the next process
lea edx, [ebp-130h]
push edx
push edi
call Process32Next

test eax, eax
jz short loc_10001D24 (line 70)
; If the returned handle is not zero do this...

; Do the string comparison again.
lea eax, [ebp-10Ch]
push 10007C50h
push eax
call esi ; _stricmp
add esp, 8
test eax, eax
jnz short loc_10001CF0 (line 52)
; Loop

loc_10001D16:
; String comparison matched...

; ebp-130h is the start of the struct.
; ebp-128h is 8 bytes in; the third field.
; ebp-118h is 24 bytes in; the seventh field.
mov eax, [ebp-118h] ; th32ParentProcessID
mov ecx, [ebp-128h] ; th32ProcessID
jmp short loc_10001D2A (line 73)

loc_10001D24:
; Process was not found.
; Zero eax and ecx.
mov eax, [ebp+0Ch]
mov ecx, [ebp+0Ch]

loc_10001D2A:
cmp eax, ecx

pop esi     ; ???

jnz short loc_10001D38 (line 82)
; Prcoess id and Parent process id are the same.

xor eax, eax
pop edi     ; ???

; Return 0.
mov esp, ebp
pop ebp
retn 0Ch

loc_10001D38:
; Process id and parent id are not the same.

; This is the second argument to this function.
; If we assume that the function is dllMain then this argument is called
; fdwReason.
mov eax, [ebp+0Ch]

dec eax
jnz short loc_10001D53 (line 93)

; Argument was 1.
push 0          ; lpThreadId            - Pointer to where to store thread id.
push 0          ; dwCreationFlags       - Thread runs imiidiatly after creation.
push 0          ; lpParameter           - Pointer to variable for thread.
push 100032D0h  ; lpStartAddress        - Code to execute.
push 0          ; dwStackSize           - Default size for executable.
push 0          ; lpThreadAttributes    - Returned handle cannot be inherited.
call ds:CreateThread
; Return value of CreateThread seems to be ignored.

loc_10001D53:
mov eax, 1
pop edi
mov esp, ebp
pop ebp
retn 0Ch
_DllMain@12 endp 

