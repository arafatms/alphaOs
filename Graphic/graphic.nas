[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[OPTIMIZE 1]
[OPTION 1]
[BITS 32]
	EXTERN	_io_load_eflags
	EXTERN	_io_cli
	EXTERN	_io_out8
	EXTERN	_io_store_eflags
	EXTERN	_hankaku
	EXTERN	_sheet_refresh
[FILE "graphic.c"]
[SECTION .text]
	GLOBAL	_init_screen
_init_screen:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	SUB	ESP,12
	MOV	EAX,DWORD [16+EBP]
	MOV	EDI,DWORD [12+EBP]
	SUB	EAX,29
	DEC	EDI
	PUSH	EAX
	PUSH	EDI
	PUSH	0
	PUSH	0
	PUSH	1
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EAX,DWORD [16+EBP]
	SUB	EAX,28
	PUSH	EAX
	PUSH	EDI
	PUSH	EAX
	PUSH	0
	PUSH	8
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EAX,DWORD [16+EBP]
	ADD	ESP,56
	SUB	EAX,27
	PUSH	EAX
	PUSH	EDI
	PUSH	EAX
	PUSH	0
	PUSH	14
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EAX,DWORD [16+EBP]
	DEC	EAX
	PUSH	EAX
	MOV	EAX,DWORD [16+EBP]
	PUSH	EDI
	SUB	EAX,26
	PUSH	EAX
	PUSH	0
	PUSH	8
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	ESI,DWORD [16+EBP]
	ADD	ESP,56
	SUB	ESI,24
	PUSH	ESI
	PUSH	59
	PUSH	ESI
	PUSH	3
	PUSH	14
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EAX,DWORD [16+EBP]
	SUB	EAX,4
	PUSH	EAX
	MOV	DWORD [-16+EBP],EAX
	PUSH	2
	PUSH	ESI
	PUSH	2
	PUSH	14
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	ADD	ESP,56
	PUSH	DWORD [-16+EBP]
	PUSH	59
	PUSH	DWORD [-16+EBP]
	PUSH	3
	PUSH	16
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EAX,DWORD [16+EBP]
	SUB	EAX,5
	PUSH	EAX
	MOV	EAX,DWORD [16+EBP]
	PUSH	59
	SUB	EAX,23
	PUSH	EAX
	MOV	DWORD [-20+EBP],EAX
	PUSH	59
	PUSH	16
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EAX,DWORD [16+EBP]
	ADD	ESP,56
	SUB	EAX,3
	MOV	DWORD [-24+EBP],EAX
	PUSH	EAX
	PUSH	59
	PUSH	EAX
	PUSH	2
	PUSH	7
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	PUSH	DWORD [-24+EBP]
	PUSH	60
	PUSH	ESI
	PUSH	60
	PUSH	7
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EDI,DWORD [12+EBP]
	ADD	ESP,56
	MOV	EBX,DWORD [12+EBP]
	SUB	EBX,4
	SUB	EDI,47
	PUSH	ESI
	PUSH	EBX
	PUSH	ESI
	PUSH	EDI
	PUSH	16
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	PUSH	DWORD [-16+EBP]
	PUSH	EDI
	PUSH	DWORD [-20+EBP]
	PUSH	EDI
	PUSH	16
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	ADD	ESP,56
	PUSH	DWORD [-24+EBP]
	PUSH	EBX
	PUSH	DWORD [-24+EBP]
	PUSH	EDI
	PUSH	14
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	MOV	EAX,DWORD [12+EBP]
	PUSH	DWORD [-24+EBP]
	SUB	EAX,3
	PUSH	EAX
	PUSH	ESI
	PUSH	EAX
	PUSH	14
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_boxfill8
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
[SECTION .data]
_table_rgb.0:
	DB	-6
	DB	-6
	DB	-6
	DB	124
	DB	124
	DB	124
	DB	-60
	DB	-60
	DB	-60
	DB	-51
	DB	41
	DB	50
	DB	-2
	DB	-66
	DB	80
	DB	-1
	DB	0
	DB	-1
	DB	90
	DB	-90
	DB	-39
	DB	0
	DB	0
	DB	0
	DB	-58
	DB	-58
	DB	-58
	DB	-124
	DB	0
	DB	0
	DB	0
	DB	-124
	DB	0
	DB	-124
	DB	-124
	DB	0
	DB	0
	DB	0
	DB	-124
	DB	-124
	DB	0
	DB	-124
	DB	-1
	DB	-1
	DB	-1
	DB	-2
	DB	-2
	DB	-2
	DB	-124
	DB	-124
	DB	-124
	DB	0
	DB	-124
	DB	-124
	DB	69
	DB	68
	DB	63
	DB	48
	DB	9
	DB	36
	RESB	36
[SECTION .text]
	GLOBAL	_init_palette
_init_palette:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	_table_rgb.0
	PUSH	32
	PUSH	0
	CALL	_set_palette
	LEAVE
	RET
	GLOBAL	_set_palette
_set_palette:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	PUSH	ECX
	MOV	EBX,DWORD [8+EBP]
	MOV	EDI,DWORD [12+EBP]
	MOV	ESI,DWORD [16+EBP]
	CALL	_io_load_eflags
	MOV	DWORD [-16+EBP],EAX
	CALL	_io_cli
	PUSH	EBX
	PUSH	968
	CALL	_io_out8
	CMP	EBX,EDI
	POP	EAX
	POP	EDX
	JLE	L8
L10:
	MOV	EAX,DWORD [-16+EBP]
	MOV	DWORD [8+EBP],EAX
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	JMP	_io_store_eflags
L8:
	MOV	AL,BYTE [ESI]
	INC	EBX
	SHR	AL,2
	MOVZX	EAX,AL
	PUSH	EAX
	PUSH	969
	CALL	_io_out8
	MOV	AL,BYTE [1+ESI]
	SHR	AL,2
	MOVZX	EAX,AL
	PUSH	EAX
	PUSH	969
	CALL	_io_out8
	MOV	AL,BYTE [2+ESI]
	SHR	AL,2
	ADD	ESI,3
	MOVZX	EAX,AL
	PUSH	EAX
	PUSH	969
	CALL	_io_out8
	ADD	ESP,24
	CMP	EBX,EDI
	JLE	L8
	JMP	L10
	GLOBAL	_boxfill8
_boxfill8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	PUSH	EDI
	PUSH	EDI
	MOV	AL,BYTE [16+EBP]
	MOV	ECX,DWORD [24+EBP]
	MOV	EDI,DWORD [28+EBP]
	MOV	BYTE [-13+EBP],AL
	CMP	ECX,DWORD [32+EBP]
	JG	L23
	MOV	EBX,DWORD [12+EBP]
	IMUL	EBX,ECX
L21:
	MOV	EDX,DWORD [20+EBP]
	CMP	EDX,EDI
	JG	L25
	MOV	ESI,DWORD [8+EBP]
	ADD	ESI,EBX
	ADD	ESI,EDX
	MOV	DWORD [-20+EBP],ESI
L20:
	MOV	ESI,DWORD [-20+EBP]
	MOV	AL,BYTE [-13+EBP]
	INC	EDX
	MOV	BYTE [ESI],AL
	INC	ESI
	MOV	DWORD [-20+EBP],ESI
	CMP	EDX,EDI
	JLE	L20
L25:
	INC	ECX
	ADD	EBX,DWORD [12+EBP]
	CMP	ECX,DWORD [32+EBP]
	JLE	L21
L23:
	POP	EBX
	POP	ESI
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
	GLOBAL	_boxfill_circle_forWindow
_boxfill_circle_forWindow:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	SUB	ESP,28
	MOV	EAX,DWORD [8+EBP]
	MOV	EDI,DWORD [36+EBP]
	MOV	DWORD [-16+EBP],EAX
	MOV	EAX,DWORD [12+EBP]
	MOV	DWORD [-20+EBP],EAX
	MOV	EAX,DWORD [20+EBP]
	MOV	DWORD [-28+EBP],EAX
	MOV	EAX,DWORD [24+EBP]
	MOV	DWORD [-32+EBP],EAX
	MOV	EAX,DWORD [28+EBP]
	MOV	DWORD [-36+EBP],EAX
	MOV	EAX,DWORD [32+EBP]
	MOV	DWORD [-40+EBP],EAX
	MOV	AL,BYTE [16+EBP]
	MOV	BYTE [-21+EBP],AL
	CMP	DWORD [40+EBP],0
	JNE	L27
	PUSH	EDI
	MOV	ESI,DWORD [-32+EBP]
	ADD	ESI,EDI
	PUSH	ESI
	MOV	EAX,DWORD [-28+EBP]
	ADD	EAX,EDI
	PUSH	EAX
	MOVZX	EBX,BYTE [-21+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8
	PUSH	EDI
	PUSH	ESI
	MOV	EAX,DWORD [-36+EBP]
	SUB	EAX,EDI
	PUSH	EAX
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8
L29:
	MOV	ESI,DWORD [-32+EBP]
	ADD	ESP,48
	ADD	ESI,EDI
	PUSH	ESI
	MOV	EAX,DWORD [-36+EBP]
	SUB	EAX,EDI
	PUSH	EAX
	PUSH	DWORD [-32+EBP]
	MOV	EAX,DWORD [-28+EBP]
	ADD	EAX,EDI
	PUSH	EAX
	MOVZX	EBX,BYTE [-21+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_boxfill8
	MOV	DWORD [16+EBP],EBX
	MOV	EAX,DWORD [-40+EBP]
	MOV	DWORD [24+EBP],ESI
	MOV	DWORD [32+EBP],EAX
	ADD	ESP,28
	MOV	EAX,DWORD [-36+EBP]
	MOV	DWORD [28+EBP],EAX
	MOV	EAX,DWORD [-28+EBP]
	MOV	DWORD [20+EBP],EAX
	MOV	EAX,DWORD [-20+EBP]
	MOV	DWORD [12+EBP],EAX
	MOV	EAX,DWORD [-16+EBP]
	MOV	DWORD [8+EBP],EAX
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	JMP	_boxfill8
L27:
	PUSH	EDI
	MOV	ESI,DWORD [-32+EBP]
	ADD	ESI,EDI
	PUSH	ESI
	MOV	EAX,DWORD [-28+EBP]
	ADD	EAX,EDI
	PUSH	EAX
	MOVZX	EBX,BYTE [-21+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8_No_BG
	PUSH	EDI
	PUSH	ESI
	MOV	EAX,DWORD [-36+EBP]
	SUB	EAX,EDI
	PUSH	EAX
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8_No_BG
	JMP	L29
	GLOBAL	_boxfill_circle
_boxfill_circle:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	SUB	ESP,56
	MOV	EAX,DWORD [8+EBP]
	MOV	EDI,DWORD [36+EBP]
	MOV	DWORD [-16+EBP],EAX
	MOV	EAX,DWORD [12+EBP]
	MOV	DWORD [-20+EBP],EAX
	MOV	EAX,DWORD [20+EBP]
	MOV	DWORD [-28+EBP],EAX
	MOV	EAX,DWORD [24+EBP]
	MOV	DWORD [-32+EBP],EAX
	MOV	EAX,DWORD [28+EBP]
	MOV	DWORD [-36+EBP],EAX
	MOV	EAX,DWORD [32+EBP]
	MOV	DWORD [-40+EBP],EAX
	MOV	AL,BYTE [16+EBP]
	MOV	BYTE [-21+EBP],AL
	CMP	DWORD [40+EBP],0
	JNE	L31
	PUSH	EDI
	MOV	ESI,DWORD [-32+EBP]
	ADD	ESI,EDI
	PUSH	ESI
	MOV	EAX,DWORD [-28+EBP]
	ADD	EAX,EDI
	MOV	DWORD [-44+EBP],EAX
	PUSH	EAX
	MOVZX	EBX,BYTE [-21+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8
	PUSH	EDI
	PUSH	ESI
	MOV	EAX,DWORD [-36+EBP]
	SUB	EAX,EDI
	MOV	DWORD [-48+EBP],EAX
	PUSH	EAX
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8
	ADD	ESP,48
	PUSH	EDI
	MOV	ESI,DWORD [-40+EBP]
	SUB	ESI,EDI
	PUSH	ESI
	PUSH	DWORD [-44+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8
	PUSH	EDI
	PUSH	ESI
	PUSH	DWORD [-48+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8
L33:
	ADD	ESP,48
	MOV	EAX,DWORD [-32+EBP]
	ADD	EAX,EDI
	MOV	DWORD [-60+EBP],EAX
	PUSH	EAX
	MOV	EAX,DWORD [-36+EBP]
	SUB	EAX,EDI
	MOV	DWORD [-64+EBP],EAX
	PUSH	EAX
	PUSH	DWORD [-32+EBP]
	MOV	EAX,DWORD [-28+EBP]
	ADD	EAX,EDI
	MOV	DWORD [-68+EBP],EAX
	PUSH	EAX
	MOVZX	EBX,BYTE [-21+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_boxfill8
	MOV	ESI,DWORD [-40+EBP]
	SUB	ESI,EDI
	PUSH	ESI
	PUSH	DWORD [-36+EBP]
	PUSH	DWORD [-60+EBP]
	PUSH	DWORD [-28+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_boxfill8
	MOV	DWORD [16+EBP],EBX
	MOV	EAX,DWORD [-40+EBP]
	MOV	DWORD [24+EBP],ESI
	MOV	DWORD [32+EBP],EAX
	ADD	ESP,56
	MOV	EAX,DWORD [-64+EBP]
	MOV	DWORD [28+EBP],EAX
	MOV	EAX,DWORD [-68+EBP]
	MOV	DWORD [20+EBP],EAX
	MOV	EAX,DWORD [-20+EBP]
	MOV	DWORD [12+EBP],EAX
	MOV	EAX,DWORD [-16+EBP]
	MOV	DWORD [8+EBP],EAX
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	JMP	_boxfill8
L31:
	PUSH	EDI
	MOV	ESI,DWORD [-32+EBP]
	ADD	ESI,EDI
	PUSH	ESI
	MOV	EAX,DWORD [-28+EBP]
	ADD	EAX,EDI
	MOV	DWORD [-52+EBP],EAX
	PUSH	EAX
	MOVZX	EBX,BYTE [-21+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8_No_BG
	PUSH	EDI
	PUSH	ESI
	MOV	EAX,DWORD [-36+EBP]
	SUB	EAX,EDI
	MOV	DWORD [-56+EBP],EAX
	PUSH	EAX
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8_No_BG
	ADD	ESP,48
	PUSH	EDI
	MOV	ESI,DWORD [-40+EBP]
	SUB	ESI,EDI
	PUSH	ESI
	PUSH	DWORD [-52+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8_No_BG
	PUSH	EDI
	PUSH	ESI
	PUSH	DWORD [-56+EBP]
	PUSH	EBX
	PUSH	DWORD [-20+EBP]
	PUSH	DWORD [-16+EBP]
	CALL	_Circlefill8_No_BG
	JMP	L33
	GLOBAL	_Circlefill8
_Circlefill8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	SUB	ESP,48
	MOV	AL,BYTE [16+EBP]
	MOV	BYTE [-29+EBP],AL
	MOV	EAX,DWORD [24+EBP]
	SUB	EAX,DWORD [28+EBP]
	MOV	DWORD [-24+EBP],EAX
	MOV	EAX,DWORD [20+EBP]
	SUB	EAX,DWORD [28+EBP]
	MOV	DWORD [-28+EBP],EAX
	MOV	EAX,DWORD [20+EBP]
	ADD	EAX,DWORD [28+EBP]
	MOV	DWORD [-20+EBP],EAX
	MOV	EAX,DWORD [24+EBP]
	ADD	EAX,DWORD [28+EBP]
	MOV	DWORD [-16+EBP],EAX
	LEA	EAX,DWORD [-16+EBP]
	PUSH	EAX
	LEA	EAX,DWORD [-20+EBP]
	PUSH	EAX
	LEA	EAX,DWORD [-24+EBP]
	PUSH	EAX
	LEA	EAX,DWORD [-28+EBP]
	PUSH	EAX
	CALL	_FixPosition
	ADD	ESP,16
	MOV	EAX,DWORD [-24+EBP]
	MOV	DWORD [-36+EBP],EAX
	MOV	EAX,DWORD [-16+EBP]
	MOV	DWORD [-40+EBP],EAX
	CMP	DWORD [-36+EBP],EAX
	JG	L48
	MOV	EAX,DWORD [-28+EBP]
	MOV	DWORD [-48+EBP],EAX
	MOV	EAX,DWORD [-20+EBP]
	MOV	DWORD [-52+EBP],EAX
	MOV	EAX,DWORD [-36+EBP]
	IMUL	EAX,DWORD [12+EBP]
	MOV	DWORD [-56+EBP],EAX
	MOV	DWORD [-60+EBP],EAX
L46:
	MOV	EAX,DWORD [-52+EBP]
	MOV	EBX,DWORD [-48+EBP]
	MOV	DWORD [-44+EBP],EAX
	CMP	EBX,EAX
	JG	L50
	MOV	EAX,DWORD [-56+EBP]
	ADD	EAX,DWORD [8+EBP]
	LEA	EDI,DWORD [EAX+EBX*1]
	MOV	EAX,DWORD [-60+EBP]
	ADD	EAX,DWORD [8+EBP]
	LEA	ESI,DWORD [EAX+EBX*1]
L45:
	MOV	EDX,EBX
	MOV	EAX,DWORD [-36+EBP]
	SUB	EDX,DWORD [20+EBP]
	SUB	EAX,DWORD [24+EBP]
	IMUL	EDX,EDX
	IMUL	EAX,EAX
	MOV	ECX,DWORD [28+EBP]
	ADD	EDX,EAX
	IMUL	ECX,ECX
	CMP	ECX,EDX
	JL	L43
	MOV	AL,BYTE [-29+EBP]
	MOV	BYTE [ESI],AL
L41:
	INC	EBX
	INC	EDI
	INC	ESI
	CMP	EBX,DWORD [-44+EBP]
	JLE	L45
L50:
	MOV	EAX,DWORD [12+EBP]
	INC	DWORD [-36+EBP]
	ADD	DWORD [-56+EBP],EAX
	ADD	DWORD [-60+EBP],EAX
	MOV	EAX,DWORD [-40+EBP]
	CMP	DWORD [-36+EBP],EAX
	JLE	L46
L48:
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
L43:
	MOV	BYTE [EDI],15
	JMP	L41
	GLOBAL	_Circlefill8_No_BG
_Circlefill8_No_BG:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	SUB	ESP,40
	MOV	AL,BYTE [16+EBP]
	MOV	BYTE [-29+EBP],AL
	MOV	EAX,DWORD [24+EBP]
	SUB	EAX,DWORD [28+EBP]
	MOV	DWORD [-24+EBP],EAX
	MOV	EAX,DWORD [20+EBP]
	SUB	EAX,DWORD [28+EBP]
	MOV	DWORD [-28+EBP],EAX
	MOV	EAX,DWORD [20+EBP]
	ADD	EAX,DWORD [28+EBP]
	MOV	DWORD [-20+EBP],EAX
	MOV	EAX,DWORD [24+EBP]
	ADD	EAX,DWORD [28+EBP]
	MOV	DWORD [-16+EBP],EAX
	LEA	EAX,DWORD [-16+EBP]
	PUSH	EAX
	LEA	EAX,DWORD [-20+EBP]
	PUSH	EAX
	LEA	EAX,DWORD [-24+EBP]
	PUSH	EAX
	LEA	EAX,DWORD [-28+EBP]
	PUSH	EAX
	CALL	_FixPosition
	MOV	EAX,DWORD [-16+EBP]
	MOV	EDI,DWORD [-24+EBP]
	ADD	ESP,16
	MOV	DWORD [-36+EBP],EAX
	CMP	EDI,EAX
	JG	L64
	MOV	EAX,DWORD [-28+EBP]
	MOV	DWORD [-44+EBP],EAX
	MOV	EAX,DWORD [-20+EBP]
	MOV	DWORD [-48+EBP],EAX
	MOV	EAX,DWORD [12+EBP]
	IMUL	EAX,EDI
	MOV	DWORD [-52+EBP],EAX
L62:
	MOV	EAX,DWORD [-48+EBP]
	MOV	EBX,DWORD [-44+EBP]
	MOV	DWORD [-40+EBP],EAX
	CMP	EBX,EAX
	JG	L66
	MOV	EAX,DWORD [-52+EBP]
	ADD	EAX,DWORD [8+EBP]
	LEA	ESI,DWORD [EAX+EBX*1]
L61:
	MOV	EDX,EBX
	MOV	EAX,EDI
	SUB	EDX,DWORD [20+EBP]
	SUB	EAX,DWORD [24+EBP]
	IMUL	EDX,EDX
	IMUL	EAX,EAX
	MOV	ECX,DWORD [28+EBP]
	ADD	EDX,EAX
	IMUL	ECX,ECX
	CMP	ECX,EDX
	JL	L58
	MOV	AL,BYTE [-29+EBP]
	MOV	BYTE [ESI],AL
L58:
	INC	EBX
	INC	ESI
	CMP	EBX,DWORD [-40+EBP]
	JLE	L61
L66:
	MOV	EAX,DWORD [12+EBP]
	INC	EDI
	ADD	DWORD [-52+EBP],EAX
	CMP	EDI,DWORD [-36+EBP]
	JLE	L62
L64:
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
	GLOBAL	_FixPosition
_FixPosition:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EBX
	MOV	EAX,DWORD [8+EBP]
	MOV	EDX,DWORD [12+EBP]
	MOV	ECX,DWORD [16+EBP]
	MOV	EBX,DWORD [20+EBP]
	CMP	DWORD [EAX],0
	JS	L72
L68:
	CMP	DWORD [EDX],0
	JS	L73
L69:
	CMP	DWORD [ECX],1024
	JLE	L70
	MOV	DWORD [ECX],1024
L70:
	CMP	DWORD [EBX],768
	JLE	L67
	MOV	DWORD [EBX],768
L67:
	POP	EBX
	POP	EBP
	RET
L73:
	MOV	DWORD [EDX],0
	JMP	L69
L72:
	MOV	DWORD [EAX],0
	JMP	L68
	GLOBAL	_putfont8
_putfont8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	XOR	ESI,ESI
	PUSH	EBX
	MOV	EDI,DWORD [28+EBP]
	MOV	BL,BYTE [24+EBP]
L87:
	MOV	EAX,DWORD [20+EBP]
	MOV	EDX,DWORD [16+EBP]
	ADD	EAX,ESI
	IMUL	EAX,DWORD [12+EBP]
	ADD	EAX,DWORD [8+EBP]
	LEA	ECX,DWORD [EDX+EAX*1]
	MOV	DL,BYTE [ESI+EDI*1]
	TEST	DL,DL
	JNS	L79
	MOV	BYTE [ECX],BL
L79:
	MOV	AL,DL
	AND	EAX,64
	TEST	AL,AL
	JE	L80
	MOV	BYTE [1+ECX],BL
L80:
	MOV	AL,DL
	AND	EAX,32
	TEST	AL,AL
	JE	L81
	MOV	BYTE [2+ECX],BL
L81:
	MOV	AL,DL
	AND	EAX,16
	TEST	AL,AL
	JE	L82
	MOV	BYTE [3+ECX],BL
L82:
	MOV	AL,DL
	AND	EAX,8
	TEST	AL,AL
	JE	L83
	MOV	BYTE [4+ECX],BL
L83:
	MOV	AL,DL
	AND	EAX,4
	TEST	AL,AL
	JE	L84
	MOV	BYTE [5+ECX],BL
L84:
	MOV	AL,DL
	AND	EAX,2
	TEST	AL,AL
	JE	L85
	MOV	BYTE [6+ECX],BL
L85:
	AND	EDX,1
	TEST	DL,DL
	JE	L77
	MOV	BYTE [7+ECX],BL
L77:
	INC	ESI
	CMP	ESI,15
	JLE	L87
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
	GLOBAL	_putfonts8_asc
_putfonts8_asc:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	PUSH	EAX
	MOV	EBX,DWORD [28+EBP]
	MOV	AL,BYTE [24+EBP]
	MOV	BYTE [-13+EBP],AL
	MOV	ESI,DWORD [16+EBP]
	MOV	EDI,DWORD [20+EBP]
	CMP	BYTE [EBX],0
	JNE	L95
L97:
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
L95:
	MOVZX	EAX,BYTE [EBX]
	SAL	EAX,4
	INC	EBX
	ADD	EAX,_hankaku
	PUSH	EAX
	MOVSX	EAX,BYTE [-13+EBP]
	PUSH	EAX
	PUSH	EDI
	PUSH	ESI
	ADD	ESI,8
	PUSH	DWORD [12+EBP]
	PUSH	DWORD [8+EBP]
	CALL	_putfont8
	ADD	ESP,24
	CMP	BYTE [EBX],0
	JNE	L95
	JMP	L97
[SECTION .data]
_cursor.1:
	DB	"*..............."
	DB	"*O*............."
	DB	"*OO*............"
	DB	"*OOOO*.........."
	DB	"*OOOOO*........."
	DB	"*OOOOOOO*......."
	DB	"*OOOOOOOO*......"
	DB	"*OOOOOOOOOO*...."
	DB	"*OOOOOOOOOOO*..."
	DB	"*OOOOOOOOOOOOO*."
	DB	"*OOOOOOOOOOOOOO*"
	DB	"*OOOO*OOOO*....."
	DB	"*OO*..*OOOO*...."
	DB	"*......*OOOO*..."
	DB	"........*OOOO*.."
	DB	"..........****.."
[SECTION .text]
	GLOBAL	_init_mouse_cursor8
_init_mouse_cursor8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	XOR	EDI,EDI
	PUSH	EBX
	XOR	EBX,EBX
	PUSH	EAX
	MOV	AL,BYTE [12+EBP]
	MOV	ESI,DWORD [8+EBP]
	MOV	BYTE [-13+EBP],AL
L111:
	XOR	EDX,EDX
L110:
	LEA	EAX,DWORD [EDX+EDI*1]
	CMP	BYTE [_cursor.1+EAX],42
	JE	L116
L107:
	CMP	BYTE [_cursor.1+EAX],79
	JE	L117
L108:
	CMP	BYTE [_cursor.1+EAX],46
	JE	L118
L105:
	INC	EDX
	CMP	EDX,15
	JLE	L110
	INC	EBX
	ADD	EDI,16
	CMP	EBX,15
	JLE	L111
	POP	EAX
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
L118:
	MOV	CL,BYTE [-13+EBP]
	MOV	BYTE [EAX+ESI*1],CL
	JMP	L105
L117:
	MOV	BYTE [EAX+ESI*1],99
	JMP	L108
L116:
	MOV	BYTE [EAX+ESI*1],0
	JMP	L107
	GLOBAL	_putblock8_8
_putblock8_8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	XOR	ESI,ESI
	PUSH	EBX
	SUB	ESP,12
	CMP	ESI,DWORD [20+EBP]
	JGE	L131
	XOR	EDI,EDI
L129:
	XOR	EBX,EBX
	CMP	EBX,DWORD [16+EBP]
	JGE	L133
	MOV	EAX,DWORD [32+EBP]
	ADD	EAX,EDI
	MOV	DWORD [-20+EBP],EAX
L128:
	MOV	EAX,DWORD [28+EBP]
	MOV	EDX,DWORD [24+EBP]
	ADD	EAX,ESI
	ADD	EDX,EBX
	IMUL	EAX,DWORD [12+EBP]
	ADD	EAX,EDX
	MOV	ECX,DWORD [8+EBP]
	MOV	EDX,DWORD [-20+EBP]
	INC	EBX
	MOV	DL,BYTE [EDX]
	MOV	BYTE [EAX+ECX*1],DL
	INC	DWORD [-20+EBP]
	CMP	EBX,DWORD [16+EBP]
	JL	L128
L133:
	INC	ESI
	ADD	EDI,DWORD [36+EBP]
	CMP	ESI,DWORD [20+EBP]
	JL	L129
L131:
	ADD	ESP,12
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
[SECTION .data]
_closebtn.2:
	DB	"@@QQQQ@@"
	DB	"Q@@QQ@@Q"
	DB	"QQ@@@@QQ"
	DB	"QQQ@@QQQ"
	DB	"QQ@@@@QQ"
	DB	"Q@@QQ@@Q"
	DB	"@@QQQQ@@"
[SECTION .text]
	GLOBAL	_make_window8
_make_window8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	MOV	ESI,DWORD [12+EBP]
	PUSH	0
	MOV	EBX,DWORD [16+EBP]
	PUSH	10
	MOV	EDI,DWORD [8+EBP]
	PUSH	EBX
	SUB	EBX,15
	PUSH	ESI
	PUSH	0
	PUSH	0
	PUSH	0
	PUSH	ESI
	PUSH	EDI
	CALL	_boxfill_circle_forWindow
	ADD	ESP,36
	PUSH	EBX
	XOR	EBX,EBX
	PUSH	ESI
	PUSH	25
	PUSH	0
	PUSH	2
	PUSH	ESI
	PUSH	EDI
	CALL	_boxfill8
	PUSH	7
	PUSH	12
	PUSH	18
	PUSH	3
	PUSH	ESI
	PUSH	EDI
	CALL	_Circlefill8_No_BG
	ADD	ESP,52
	PUSH	7
	PUSH	12
	PUSH	35
	PUSH	4
	PUSH	ESI
	PUSH	EDI
	CALL	_Circlefill8_No_BG
	PUSH	13
	PUSH	38
	PUSH	12
	PUSH	33
	PUSH	0
	PUSH	ESI
	PUSH	EDI
	CALL	_boxfill8
	ADD	ESP,52
	PUSH	DWORD [20+EBP]
	PUSH	1
	PUSH	5
	PUSH	53
	PUSH	ESI
	PUSH	EDI
	CALL	_putfonts8_asc
	ADD	ESP,24
	IMUL	EDX,ESI,9
L145:
	XOR	ECX,ECX
	LEA	EAX,DWORD [14+EDI+EDX*1]
L144:
	CMP	BYTE [_closebtn.2+ECX+EBX*8],64
	JE	L150
L141:
	INC	ECX
	INC	EAX
	CMP	ECX,7
	JLE	L144
	INC	EBX
	ADD	EDX,ESI
	CMP	EBX,6
	JLE	L145
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
L150:
	MOV	BYTE [EAX],0
	JMP	L141
[SECTION .data]
_closebtn.3:
	DB	"@@QQQQ@@"
	DB	"Q@@QQ@@Q"
	DB	"QQ@@@@QQ"
	DB	"QQQ@@QQQ"
	DB	"QQ@@@@QQ"
	DB	"Q@@QQ@@Q"
	DB	"@@QQQQ@@"
[SECTION .text]
	GLOBAL	_make_Console8
_make_Console8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	MOV	ESI,DWORD [12+EBP]
	PUSH	0
	MOV	EDI,DWORD [8+EBP]
	PUSH	10
	XOR	EBX,EBX
	PUSH	28
	PUSH	ESI
	PUSH	0
	PUSH	0
	PUSH	18
	PUSH	ESI
	PUSH	EDI
	CALL	_boxfill_circle_forWindow
	ADD	ESP,36
	PUSH	DWORD [16+EBP]
	PUSH	ESI
	PUSH	25
	PUSH	0
	PUSH	19
	PUSH	ESI
	PUSH	EDI
	CALL	_boxfill8
	PUSH	7
	PUSH	12
	PUSH	18
	PUSH	3
	PUSH	ESI
	PUSH	EDI
	CALL	_Circlefill8_No_BG
	ADD	ESP,52
	PUSH	7
	PUSH	12
	PUSH	35
	PUSH	4
	PUSH	ESI
	PUSH	EDI
	CALL	_Circlefill8_No_BG
	PUSH	13
	PUSH	38
	PUSH	12
	PUSH	33
	PUSH	0
	PUSH	ESI
	PUSH	EDI
	CALL	_boxfill8
	ADD	ESP,52
	PUSH	DWORD [20+EBP]
	PUSH	1
	PUSH	5
	PUSH	53
	PUSH	ESI
	PUSH	EDI
	CALL	_putfonts8_asc
	ADD	ESP,24
	IMUL	EDX,ESI,9
L162:
	XOR	ECX,ECX
	LEA	EAX,DWORD [14+EDI+EDX*1]
L161:
	CMP	BYTE [_closebtn.3+ECX+EBX*8],64
	JE	L167
L158:
	INC	ECX
	INC	EAX
	CMP	ECX,7
	JLE	L161
	INC	EBX
	ADD	EDX,ESI
	CMP	EBX,6
	JLE	L162
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
L167:
	MOV	BYTE [EAX],0
	JMP	L158
	GLOBAL	_Sel_window
_Sel_window:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EBX
	CMP	DWORD [12+EBP],0
	MOV	EBX,DWORD [8+EBP]
	JNE	L169
	PUSH	EBX
	PUSH	7
L171:
	PUSH	5
	PUSH	53
	PUSH	DWORD [20+EBX]
	MOV	EAX,DWORD [28+EBX]
	PUSH	DWORD [EAX]
	CALL	_putfonts8_asc
	ADD	ESP,24
	PUSH	21
	MOV	EAX,DWORD [20+EBX]
	SUB	EAX,20
	PUSH	EAX
	PUSH	5
	PUSH	53
	PUSH	DWORD [28+EBX]
	MOV	EAX,DWORD [28+EBX]
	PUSH	DWORD [4+EAX]
	CALL	_sheet_refresh
	MOV	EBX,DWORD [-4+EBP]
	LEAVE
	RET
L169:
	PUSH	EBX
	PUSH	1
	JMP	L171
	GLOBAL	_Sel_Console
_Sel_Console:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EBX
	CMP	DWORD [12+EBP],0
	MOV	EBX,DWORD [8+EBP]
	JNE	L173
	PUSH	EBX
	PUSH	0
L175:
	PUSH	5
	PUSH	53
	PUSH	DWORD [20+EBX]
	MOV	EAX,DWORD [28+EBX]
	PUSH	DWORD [EAX]
	CALL	_putfonts8_asc
	ADD	ESP,24
	PUSH	21
	MOV	EAX,DWORD [20+EBX]
	SUB	EAX,20
	PUSH	EAX
	PUSH	5
	PUSH	53
	PUSH	DWORD [28+EBX]
	MOV	EAX,DWORD [28+EBX]
	PUSH	DWORD [4+EAX]
	CALL	_sheet_refresh
	MOV	EBX,DWORD [-4+EBP]
	LEAVE
	RET
L173:
	PUSH	EBX
	PUSH	1
	JMP	L175
	GLOBAL	_make_textbox8
_make_textbox8:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	MOV	ESI,DWORD [16+EBP]
	PUSH	EBX
	MOV	EBX,ESI
	PUSH	1
	ADD	EBX,DWORD [24+EBP]
	MOV	EDI,DWORD [12+EBP]
	PUSH	3
	ADD	EDI,DWORD [20+EBP]
	PUSH	EBX
	MOV	EAX,DWORD [8+EBP]
	PUSH	EDI
	DEC	EBX
	PUSH	ESI
	DEC	EDI
	PUSH	DWORD [12+EBP]
	PUSH	6
	INC	ESI
	PUSH	DWORD [8+EAX]
	PUSH	DWORD [EAX]
	CALL	_boxfill_circle
	MOV	EAX,DWORD [12+EBP]
	ADD	ESP,36
	INC	EAX
	PUSH	1
	PUSH	3
	PUSH	EBX
	PUSH	EDI
	PUSH	ESI
	PUSH	EAX
	MOV	EAX,DWORD [8+EBP]
	PUSH	0
	PUSH	DWORD [8+EAX]
	PUSH	DWORD [EAX]
	CALL	_boxfill_circle
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	RET
	GLOBAL	_putfonts8_asc_sht
_putfonts8_asc_sht:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	SUB	ESP,16
	MOV	EAX,DWORD [8+EBP]
	MOV	EDI,DWORD [20+EBP]
	MOV	DWORD [-16+EBP],EAX
	MOV	EBX,DWORD [24+EBP]
	MOV	EAX,DWORD [12+EBP]
	MOV	DWORD [-20+EBP],EAX
	MOV	EAX,DWORD [16+EBP]
	MOV	DWORD [-24+EBP],EAX
	MOV	EAX,DWORD [32+EBP]
	MOV	DWORD [-28+EBP],EAX
	LEA	EAX,DWORD [15+EDI]
	PUSH	EAX
	MOV	EAX,DWORD [-24+EBP]
	MOV	ESI,DWORD [36+EBP]
	MOVSX	EBX,BL
	LEA	ESI,DWORD [EAX+ESI*8]
	LEA	EAX,DWORD [-1+ESI]
	PUSH	EAX
	PUSH	EDI
	PUSH	DWORD [-24+EBP]
	MOVZX	EAX,BYTE [28+EBP]
	PUSH	EAX
	MOV	EAX,DWORD [-20+EBP]
	PUSH	DWORD [8+EAX]
	PUSH	DWORD [EAX]
	CALL	_boxfill8
	PUSH	DWORD [-28+EBP]
	PUSH	EBX
	PUSH	EDI
	PUSH	DWORD [-24+EBP]
	MOV	EAX,DWORD [-20+EBP]
	PUSH	DWORD [8+EAX]
	PUSH	DWORD [EAX]
	CALL	_putfonts8_asc
	MOV	DWORD [20+EBP],EDI
	LEA	EAX,DWORD [16+EDI]
	MOV	DWORD [24+EBP],ESI
	MOV	DWORD [28+EBP],EAX
	ADD	ESP,52
	MOV	EAX,DWORD [-24+EBP]
	MOV	DWORD [16+EBP],EAX
	MOV	EAX,DWORD [-20+EBP]
	MOV	DWORD [12+EBP],EAX
	MOV	EAX,DWORD [-16+EBP]
	MOV	DWORD [8+EBP],EAX
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	POP	ESI
	POP	EDI
	POP	EBP
	JMP	_sheet_refresh
