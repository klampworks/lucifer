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

mov eax, [ebp-6]
cmp eax, 8003F400h
jbe short loc_10001C88 (line 18)
cmp eax, 80047400h
jnb short loc_10001C88 (line 18)
xor eax, eax
pop edi
mov esp, ebp
pop ebp
retn 0Ch
loc_10001C88:
xor eax, eax
mov ecx, 49h
lea edi, [ebp-12Ch]
mov dword ptr [ebp-130h], 0
push eax
push 2
rep stosd
call CreateToolhelp32Snapshot
mov edi, eax
cmp edi, 0FFFFFFFFh
jnz short loc_10001CB9 (line 35)
xor eax, eax
pop edi
mov esp, ebp
pop ebp
retn 0Ch
loc_10001CB9:
lea eax, [ebp-130h]
push esi
push eax
push edi
mov dword ptr [ebp-130h], 128h
call Process32First
test eax, eax
jz short loc_10001D24 (line 70)
mov esi, ds:_stricmp
lea ecx, [ebp-10Ch]
push 10007C50h
push ecx
call esi ; _stricmp
add esp, 8
test eax, eax
jz short loc_10001D16 (line 66)
loc_10001CF0:
lea edx, [ebp-130h]
push edx
push edi
call Process32Next
test eax, eax
jz short loc_10001D24 (line 70)
lea eax, [ebp-10Ch]
push 10007C50h
push eax
call esi ; _stricmp
add esp, 8
test eax, eax
jnz short loc_10001CF0 (line 52)
loc_10001D16:
mov eax, [ebp-118h]
mov ecx, [ebp-128h]
jmp short loc_10001D2A (line 73)
loc_10001D24:
mov eax, [ebp+0Ch]
mov ecx, [ebp+0Ch]
loc_10001D2A:
cmp eax, ecx
pop esi
jnz short loc_10001D38 (line 82)
xor eax, eax
pop edi
mov esp, ebp
pop ebp
retn 0Ch
loc_10001D38:
mov eax, [ebp+0Ch]
dec eax
jnz short loc_10001D53 (line 93)
push 0
push 0
push 0
push 100032D0h
push 0
push 0
call ds:CreateThread
loc_10001D53:
mov eax, 1
pop edi
mov esp, ebp
pop ebp
retn 0Ch
_DllMain@12 endp 

