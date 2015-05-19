lkd> uf KeInitializeDpc
nt!KeInitializeDpc:
828bacf8 8bff            mov     edi,edi
828bacfa 55              push    ebp
828bacfb 8bec            mov     ebp,esp
828bacfd 8b4508          mov     eax,dword ptr [ebp+8]
828bad00 33c9            xor     ecx,ecx
828bad02 83601c00        and     dword ptr [eax+1Ch],0
828bad06 c60013          mov     byte ptr [eax],13h
828bad09 c6400101        mov     byte ptr [eax+1],1
828bad0d 66894802        mov     word ptr [eax+2],cx
828bad11 8b4d0c          mov     ecx,dword ptr [ebp+0Ch]
828bad14 89480c          mov     dword ptr [eax+0Ch],ecx
828bad17 8b4d10          mov     ecx,dword ptr [ebp+10h]
828bad1a 894810          mov     dword ptr [eax+10h],ecx
828bad1d 5d              pop     ebp
828bad1e c20c00          ret     0Ch
