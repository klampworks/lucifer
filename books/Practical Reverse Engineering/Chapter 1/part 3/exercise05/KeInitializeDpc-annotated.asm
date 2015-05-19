lkd> uf KeInitializeDpc
nt!KeInitializeDpc:

; no op
828bacf8 8bff            mov     edi,edi

; Function prelude
828bacfa 55              push    ebp
828bacfb 8bec            mov     ebp,esp

; First function argument
828bacfd 8b4508          mov     eax,dword ptr [ebp+8]

; Zero ecx
828bad00 33c9            xor     ecx,ecx

; Zero 4 bytes starting at eax + 0x1c
828bad02 83601c00        and     dword ptr [eax+1Ch],0

; Write 0x13 to the address pointed to be the second function argument.
828bad06 c60013          mov     byte ptr [eax],13h

; Write 1 to the octet after eax.
828bad09 c6400101        mov     byte ptr [eax+1],1

; Write 0 to (eax + 2) until (eax + 4)
828bad0d 66894802        mov     word ptr [eax+2],cx

; Copy the second function argument into ecx
828bad11 8b4d0c          mov     ecx,dword ptr [ebp+0Ch]

; Copy value of second function argument into the first at offset 12.
828bad14 89480c          mov     dword ptr [eax+0Ch],ecx


828bad17 8b4d10          mov     ecx,dword ptr [ebp+10h]
828bad1a 894810          mov     dword ptr [eax+10h],ecx
828bad1d 5d              pop     ebp
828bad1e c20c00          ret     0Ch
