format pe64 dll efi
entry efi_main

section '.text' code executable readable
efi_main:
    mov rcx, [rdx + 0x40] ; ConOut
    lea rdx, [message]
    call qword [rcx + 0x08] ; OutputString

    xor eax, eax ; EFI_SUCCESS
    retn

message:
    du 'Hello, world!', 13, 10, 0
