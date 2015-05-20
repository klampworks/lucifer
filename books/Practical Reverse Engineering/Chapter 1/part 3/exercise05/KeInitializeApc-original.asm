lkd> uf KeInitializeApc
nt!KeInitializeApc:
828c9dc5 8bff            mov     edi,edi
828c9dc7 55              push    ebp
828c9dc8 8bec            mov     ebp,esp
828c9dca 8b4508          mov     eax,dword ptr [ebp+8]
828c9dcd 8b5510          mov     edx,dword ptr [ebp+10h]
828c9dd0 8b4d0c          mov     ecx,dword ptr [ebp+0Ch]
828c9dd3 c60012          mov     byte ptr [eax],12h
828c9dd6 c6400230        mov     byte ptr [eax+2],30h
828c9dda 83fa02          cmp     edx,2
828c9ddd 7506            jne     nt!KeInitializeApc+0x20 (828c9de5)

nt!KeInitializeApc+0x1a:
828c9ddf 8a9134010000    mov     dl,byte ptr [ecx+134h]

nt!KeInitializeApc+0x20:
828c9de5 894808          mov     dword ptr [eax+8],ecx
828c9de8 8b4d14          mov     ecx,dword ptr [ebp+14h]
828c9deb 894814          mov     dword ptr [eax+14h],ecx
828c9dee 8b4d18          mov     ecx,dword ptr [ebp+18h]
828c9df1 88502c          mov     byte ptr [eax+2Ch],dl
828c9df4 894818          mov     dword ptr [eax+18h],ecx
828c9df7 8b4d1c          mov     ecx,dword ptr [ebp+1Ch]
828c9dfa 33d2            xor     edx,edx
828c9dfc 89481c          mov     dword ptr [eax+1Ch],ecx
828c9dff 3bca            cmp     ecx,edx
828c9e01 740e            je      nt!KeInitializeApc+0x4c (828c9e11)

nt!KeInitializeApc+0x3e:
828c9e03 8a4d20          mov     cl,byte ptr [ebp+20h]
828c9e06 88482d          mov     byte ptr [eax+2Dh],cl
828c9e09 8b4d24          mov     ecx,dword ptr [ebp+24h]
828c9e0c 894820          mov     dword ptr [eax+20h],ecx
828c9e0f eb06            jmp     nt!KeInitializeApc+0x52 (828c9e17)

nt!KeInitializeApc+0x4c:
828c9e11 88502d          mov     byte ptr [eax+2Dh],dl
828c9e14 895020          mov     dword ptr [eax+20h],edx

nt!KeInitializeApc+0x52:
828c9e17 88502e          mov     byte ptr [eax+2Eh],dl
828c9e1a 5d              pop     ebp
828c9e1b c22000          ret     20h

