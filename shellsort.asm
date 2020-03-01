muszla(int*, int):
push rbp
mov rbp, rsp
mov QWORD PTR [rbp-24], rdi
mov DWORD PTR [rbp-28], esi
mov eax, DWORD PTR [rbp-28]
mov edx, eax
shr edx, 31
add eax, edx
sar eax
mov DWORD PTR [rbp-12], eax
.L9:
cmp DWORD PTR [rbp-12], 0
jle .L10
mov eax, DWORD PTR [rbp-12]
mov DWORD PTR [rbp-4], eax
.L8:
mov eax, DWORD PTR [rbp-4]
cmp eax, DWORD PTR [rbp-28]
jge .L3
mov eax, DWORD PTR [rbp-4]
cdqe
lea rdx, [0+rax*4]
mov rax, QWORD PTR [rbp-24]
add rax, rdx
mov eax, DWORD PTR [rax]
mov DWORD PTR [rbp-16], eax
mov eax, DWORD PTR [rbp-4]
mov DWORD PTR [rbp-8], eax
.L7:
mov eax, DWORD PTR [rbp-8]
cmp eax, DWORD PTR [rbp-12]
jl .L4
mov eax, DWORD PTR [rbp-8]
sub eax, DWORD PTR [rbp-12]
cdqe
lea rdx, [0+rax*4]
mov rax, QWORD PTR [rbp-24]
add rax, rdx
mov eax, DWORD PTR [rax]
cmp DWORD PTR [rbp-16], eax
jge .L11
mov eax, DWORD PTR [rbp-8]
sub eax, DWORD PTR [rbp-12]
cdqe
lea rdx, [0+rax*4]
mov rax, QWORD PTR [rbp-24]
add rax, rdx
mov edx, DWORD PTR [rbp-8]
movsx rdx, edx
lea rcx, [0+rdx*4]
mov rdx, QWORD PTR [rbp-24]
add rdx, rcx
mov eax, DWORD PTR [rax]
mov DWORD PTR [rdx], eax
mov eax, DWORD PTR [rbp-12]
sub DWORD PTR [rbp-8], eax
jmp .L7
.L11:
nop
.L4:
mov eax, DWORD PTR [rbp-8]
cdqe
lea rdx, [0+rax*4]
mov rax, QWORD PTR [rbp-24]
add rdx, rax
mov eax, DWORD PTR [rbp-16]
mov DWORD PTR [rdx], eax
add DWORD PTR [rbp-4], 1
jmp .L8
.L3:
mov eax, DWORD PTR [rbp-12]
mov edx, eax
shr edx, 31
add eax, edx
sar eax
mov DWORD PTR [rbp-12], eax
jmp .L9
.L10:
nop
pop rbp
ret
.LC0:
.string "ilosc elementow :: "
.LC1:
.string "%d"
.LC2:
.string "liczby :: "
.LC3:
.string "posortowana tablica :: "
.LC4:
.string "%d "
main:
push rbp
mov rbp, rsp
sub rsp, 48
mov edi, OFFSET FLAT:.LC0
mov eax, 0
call printf
lea rax, [rbp-8]
mov rsi, rax
mov edi, OFFSET FLAT:.LC1
mov eax, 0
call scanf
mov edi, OFFSET FLAT:.LC2
mov eax, 0
call printf
mov DWORD PTR [rbp-4], 0
.L14:
mov eax, DWORD PTR [rbp-8]
cmp DWORD PTR [rbp-4], eax
jge .L13
lea rax, [rbp-48]
mov edx, DWORD PTR [rbp-4]
movsx rdx, edx
sal rdx, 2
add rax, rdx
mov rsi, rax
mov edi, OFFSET FLAT:.LC1
mov eax, 0
call scanf
add DWORD PTR [rbp-4], 1
jmp .L14
.L13:
mov edx, DWORD PTR [rbp-8]
lea rax, [rbp-48]
mov esi, edx
mov rdi, rax
call muszla(int*, int)
mov edi, OFFSET FLAT:.LC3
mov eax, 0
call printf
mov DWORD PTR [rbp-4], 0
.L16:
mov eax, DWORD PTR [rbp-8]
cmp DWORD PTR [rbp-4], eax
jge .L15
mov eax, DWORD PTR [rbp-4]
cdqe
mov eax, DWORD PTR [rbp-48+rax*4]
mov esi, eax
mov edi, OFFSET FLAT:.LC4
mov eax, 0
call printf
add DWORD PTR [rbp-4], 1
jmp .L16
.L15:
mov edi, 10
call putchar
mov eax, 0
leave
ret