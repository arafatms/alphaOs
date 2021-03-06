[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[OPTIMIZE 1]
[OPTION 1]
[BITS 32]
	EXTERN	_io_out8
	EXTERN	_io_in8
	EXTERN	_keydata0
	EXTERN	_keyfifo
	EXTERN	_fifo32_put
	EXTERN	_mousedata0
	EXTERN	_mousefifo
	EXTERN	_task_now
	EXTERN	_cons_putstr
	EXTERN	_sprintf
[FILE "int.c"]
[SECTION .text]
	GLOBAL	_init_pic
_init_pic:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	255
	PUSH	33
	CALL	_io_out8
	PUSH	255
	PUSH	161
	CALL	_io_out8
	PUSH	17
	PUSH	32
	CALL	_io_out8
	PUSH	32
	PUSH	33
	CALL	_io_out8
	ADD	ESP,32
	PUSH	4
	PUSH	33
	CALL	_io_out8
	PUSH	1
	PUSH	33
	CALL	_io_out8
	PUSH	17
	PUSH	160
	CALL	_io_out8
	PUSH	40
	PUSH	161
	CALL	_io_out8
	ADD	ESP,32
	PUSH	2
	PUSH	161
	CALL	_io_out8
	PUSH	1
	PUSH	161
	CALL	_io_out8
	PUSH	251
	PUSH	33
	CALL	_io_out8
	PUSH	255
	PUSH	161
	CALL	_io_out8
	LEAVE
	RET
	GLOBAL	_inthandler21
_inthandler21:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	97
	PUSH	32
	CALL	_io_out8
	PUSH	96
	CALL	_io_in8
	ADD	EAX,DWORD [_keydata0]
	PUSH	EAX
	PUSH	DWORD [_keyfifo]
	CALL	_fifo32_put
	LEAVE
	RET
	GLOBAL	_inthandler2c
_inthandler2c:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	100
	PUSH	160
	CALL	_io_out8
	PUSH	98
	PUSH	32
	CALL	_io_out8
	PUSH	96
	CALL	_io_in8
	ADD	EAX,DWORD [_mousedata0]
	PUSH	EAX
	PUSH	DWORD [_mousefifo]
	CALL	_fifo32_put
	LEAVE
	RET
	GLOBAL	_inthandler27
_inthandler27:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	103
	PUSH	32
	CALL	_io_out8
	LEAVE
	RET
[SECTION .data]
LC0:
	DB	0x0A,"INT 0C :",0x0A," Stack Exception.",0x0A,0x00
LC1:
	DB	"EIP = %08X",0x0A,0x00
[SECTION .text]
	GLOBAL	_inthandler0c
_inthandler0c:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	LEA	EBX,DWORD [-44+EBP]
	SUB	ESP,32
	MOV	EDI,DWORD [4076]
	CALL	_task_now
	PUSH	LC0
	MOV	ESI,EAX
	PUSH	EDI
	ADD	ESI,20
	CALL	_cons_putstr
	MOV	EAX,DWORD [8+EBP]
	PUSH	DWORD [44+EAX]
	PUSH	LC1
	PUSH	EBX
	CALL	_sprintf
	PUSH	EBX
	PUSH	EDI
	CALL	_cons_putstr
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	MOV	EAX,ESI
	POP	ESI
	POP	EDI
	POP	EBP
	RET
[SECTION .data]
LC2:
	DB	0x0A,"INT 0D :",0x0A," General Protected Exception.",0x0A,0x00
[SECTION .text]
	GLOBAL	_inthandler0d
_inthandler0d:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	LEA	EBX,DWORD [-44+EBP]
	SUB	ESP,32
	MOV	EDI,DWORD [4076]
	CALL	_task_now
	PUSH	LC2
	MOV	ESI,EAX
	PUSH	EDI
	ADD	ESI,20
	CALL	_cons_putstr
	MOV	EAX,DWORD [8+EBP]
	PUSH	DWORD [44+EAX]
	PUSH	LC1
	PUSH	EBX
	CALL	_sprintf
	PUSH	EBX
	PUSH	EDI
	CALL	_cons_putstr
	LEA	ESP,DWORD [-12+EBP]
	POP	EBX
	MOV	EAX,ESI
	POP	ESI
	POP	EDI
	POP	EBP
	RET
	GLOBAL	_Allow_InterruptMask
_Allow_InterruptMask:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	248
	PUSH	33
	CALL	_io_out8
	PUSH	239
	PUSH	161
	CALL	_io_out8
	LEAVE
	RET
