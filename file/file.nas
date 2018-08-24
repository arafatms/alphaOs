[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[OPTIMIZE 1]
[OPTION 1]
[BITS 32]
[FILE "file.c"]
[SECTION .text]
	GLOBAL	_file_search
_file_search:
	PUSH	EBP
	XOR	ECX,ECX
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	SUB	ESP,20
	MOV	EBX,DWORD [8+EBP]
L6:
	MOV	BYTE [-28+EBP+ECX*1],32
	INC	ECX
	CMP	ECX,10
	JLE	L6
	XOR	ECX,ECX
	XOR	EDI,EDI
	CMP	BYTE [EBX],0
	JE	L33
L15:
	XOR	EAX,EAX
	CMP	ECX,10
	JG	L1
	MOV	DL,BYTE [EDI+EBX*1]
	CMP	DL,46
	JE	L37
L12:
	LEA	EAX,DWORD [-97+EDX]
	MOV	BYTE [-28+EBP+ECX*1],DL
	CMP	AL,25
	JA	L14
	LEA	EAX,DWORD [-32+EDX]
	MOV	BYTE [-28+EBP+ECX*1],AL
L14:
	INC	ECX
L9:
	INC	EDI
	CMP	BYTE [EDI+EBX*1],0
	JNE	L15
L33:
	XOR	EDI,EDI
	CMP	EDI,DWORD [16+EBP]
	JGE	L17
	MOV	ESI,DWORD [12+EBP]
	MOV	DWORD [-32+EBP],0
L29:
	CMP	BYTE [ESI],0
	JE	L17
	TEST	BYTE [11+ESI],24
	JNE	L27
	MOV	EBX,DWORD [12+EBP]
	XOR	ECX,ECX
	ADD	EBX,DWORD [-32+EBP]
L28:
	MOVZX	EDX,BYTE [EBX]
	MOVSX	EAX,BYTE [-28+EBP+ECX*1]
	CMP	EDX,EAX
	JNE	L27
	INC	ECX
	INC	EBX
	MOV	EAX,ESI
	CMP	ECX,10
	JLE	L28
L1:
	ADD	ESP,20
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
L27:
	INC	EDI
	ADD	ESI,32
	ADD	DWORD [-32+EBP],32
	CMP	EDI,DWORD [16+EBP]
	JL	L29
L17:
	XOR	EAX,EAX
	JMP	L1
L37:
	CMP	ECX,8
	JG	L12
	MOV	ECX,8
	JMP	L9
	GLOBAL	_file_readfat
_file_readfat:
	PUSH	EBP
	XOR	ECX,ECX
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	MOV	EDI,DWORD [8+EBP]
	MOV	ESI,DWORD [12+EBP]
	XOR	EBX,EBX
L43:
	MOVZX	EAX,BYTE [1+ECX+ESI*1]
	MOVZX	EDX,BYTE [ECX+ESI*1]
	SAL	EAX,8
	OR	EDX,EAX
	AND	EDX,4095
	MOV	DWORD [EDI+EBX*4],EDX
	MOV	AL,BYTE [1+ECX+ESI*1]
	MOVZX	EDX,BYTE [2+ECX+ESI*1]
	SHR	AL,4
	ADD	ECX,3
	SAL	EDX,4
	MOVZX	EAX,AL
	OR	EAX,EDX
	MOV	DWORD [4+EDI+EBX*4],EAX
	ADD	EBX,2
	CMP	EBX,2879
	JLE	L43
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
	GLOBAL	_file_loadfile
_file_loadfile:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	MOV	ECX,DWORD [12+EBP]
	MOV	ESI,DWORD [8+EBP]
	MOV	EBX,DWORD [16+EBP]
L47:
	CMP	ECX,512
	JLE	L64
	XOR	EDX,EDX
L60:
	MOV	EAX,ESI
	MOV	EDI,DWORD [24+EBP]
	SAL	EAX,9
	ADD	EAX,EDX
	MOV	AL,BYTE [EAX+EDI*1]
	MOV	BYTE [EDX+EBX*1],AL
	INC	EDX
	CMP	EDX,511
	JLE	L60
	MOV	EAX,DWORD [20+EBP]
	SUB	ECX,512
	ADD	EBX,512
	MOV	ESI,DWORD [EAX+ESI*4]
	JMP	L47
L64:
	XOR	EDX,EDX
	CMP	EDX,ECX
	JGE	L46
L55:
	MOV	EAX,ESI
	MOV	EDI,DWORD [24+EBP]
	SAL	EAX,9
	ADD	EAX,EDX
	MOV	AL,BYTE [EAX+EDI*1]
	MOV	BYTE [EDX+EBX*1],AL
	INC	EDX
	CMP	EDX,ECX
	JL	L55
L46:
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
