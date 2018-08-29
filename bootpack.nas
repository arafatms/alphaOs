[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[OPTIMIZE 1]
[OPTION 1]
[BITS 32]
	EXTERN	_init_gdtidt
	EXTERN	_init_pic
	EXTERN	_io_sti
	EXTERN	_init_pit
	EXTERN	_Allow_InterruptMask
	EXTERN	_memtest
	EXTERN	_memman_init
	EXTERN	_memman_free
	EXTERN	_memman_alloc_4K
	EXTERN	_init_palette
	EXTERN	_sheet
	EXTERN	_fifo32_init
	EXTERN	_init_keyboard
	EXTERN	_enable_mouse
	EXTERN	_fifo32_put
	EXTERN	_Command_int
	EXTERN	_timer_alloc
	EXTERN	_timer_init
	EXTERN	_timer_settime
	EXTERN	_task_init
	EXTERN	_task_run
	EXTERN	_Make_Win1
	EXTERN	_Sel_window
	EXTERN	_Make_Console
	EXTERN	_task_alloc
	EXTERN	_console_task
	EXTERN	_updown_mouse
	EXTERN	_fifo32_status
	EXTERN	_io_cli
	EXTERN	_fifo32_get
	EXTERN	_boxfill8
	EXTERN	_sheet_refresh
	EXTERN	_mouse_decode
	EXTERN	_sheet_slide
	EXTERN	_keytable0.1
	EXTERN	_putfonts8_asc_sht
	EXTERN	_wait_KBC_sendready
	EXTERN	_io_out8
	EXTERN	_sheet_updown
	EXTERN	_cons_putstr
	EXTERN	_asm_end_app
	EXTERN	_Sel_Console
	EXTERN	_keytable1.2
	EXTERN	_task_sleep
	EXTERN	_sprintf
[FILE "bootpack.c"]
[SECTION .data]
_keytable.0:
	DB	0
	DB	0
	DB	49
	DB	50
	DB	51
	DB	52
	DB	53
	DB	54
	DB	55
	DB	56
	DB	57
	DB	48
	DB	45
	DB	94
	DB	0
	DB	0
	DB	81
	DB	87
	DB	69
	DB	82
	DB	84
	DB	89
	DB	85
	DB	73
	DB	79
	DB	80
	DB	64
	DB	91
	DB	0
	DB	0
	DB	65
	DB	83
	DB	68
	DB	70
	DB	71
	DB	72
	DB	74
	DB	75
	DB	76
	DB	59
	DB	58
	DB	0
	DB	0
	DB	93
	DB	90
	DB	88
	DB	67
	DB	86
	DB	66
	DB	78
	DB	77
	DB	44
	DB	46
	DB	47
	DB	0
	DB	42
	DB	0
	DB	32
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	55
	DB	56
	DB	57
	DB	45
	DB	52
	DB	53
	DB	54
	DB	43
	DB	49
	DB	50
	DB	51
	DB	48
	DB	46
_keytable0.1:
	DB	0
	DB	0
	DB	49
	DB	50
	DB	51
	DB	52
	DB	53
	DB	54
	DB	55
	DB	56
	DB	57
	DB	48
	DB	45
	DB	94
	DB	0
	DB	0
	DB	81
	DB	87
	DB	69
	DB	82
	DB	84
	DB	89
	DB	85
	DB	73
	DB	79
	DB	80
	DB	64
	DB	91
	DB	0
	DB	0
	DB	65
	DB	83
	DB	68
	DB	70
	DB	71
	DB	72
	DB	74
	DB	75
	DB	76
	DB	59
	DB	58
	DB	0
	DB	0
	DB	93
	DB	90
	DB	88
	DB	67
	DB	86
	DB	66
	DB	78
	DB	77
	DB	44
	DB	46
	DB	47
	DB	0
	DB	42
	DB	0
	DB	32
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	55
	DB	56
	DB	57
	DB	45
	DB	52
	DB	53
	DB	54
	DB	43
	DB	49
	DB	50
	DB	51
	DB	48
	DB	46
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	92
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	92
	DB	0
	DB	0
_keytable1.2:
	DB	0
	DB	0
	DB	33
	DB	34
	DB	35
	DB	36
	DB	37
	DB	38
	DB	39
	DB	40
	DB	41
	DB	126
	DB	61
	DB	126
	DB	0
	DB	0
	DB	81
	DB	87
	DB	69
	DB	82
	DB	84
	DB	89
	DB	85
	DB	73
	DB	79
	DB	80
	DB	96
	DB	123
	DB	0
	DB	0
	DB	65
	DB	83
	DB	68
	DB	70
	DB	71
	DB	72
	DB	74
	DB	75
	DB	76
	DB	43
	DB	42
	DB	0
	DB	0
	DB	125
	DB	90
	DB	88
	DB	67
	DB	86
	DB	66
	DB	78
	DB	77
	DB	60
	DB	62
	DB	63
	DB	0
	DB	42
	DB	0
	DB	32
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	55
	DB	56
	DB	57
	DB	45
	DB	52
	DB	53
	DB	54
	DB	43
	DB	49
	DB	50
	DB	51
	DB	48
	DB	46
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	95
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	124
	DB	0
	DB	0
LC1:
	DB	0x0A,"Break(key) :",0x0A,0x00
LC0:
	DB	" ",0x00
[SECTION .text]
	GLOBAL	_HariMain
_HariMain:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	PUSH	EBX
	LEA	ESI,DWORD [-44+EBP]
	SUB	ESP,920
	LEA	EBX,DWORD [-76+EBP]
	CALL	_init_gdtidt
	CALL	_init_pic
	CALL	_io_sti
	CALL	_init_pit
	CALL	_Allow_InterruptMask
	PUSH	-1073741825
	PUSH	4194304
	MOV	DWORD [_memman],3932160
	CALL	_memtest
	PUSH	DWORD [_memman]
	MOV	DWORD [-884+EBP],EAX
	MOV	DWORD [_mem_total],EAX
	CALL	_memman_init
	PUSH	647168
	PUSH	4096
	PUSH	DWORD [_memman]
	CALL	_memman_free
	MOV	EAX,DWORD [-884+EBP]
	SUB	EAX,4194304
	PUSH	EAX
	PUSH	4194304
	PUSH	DWORD [_memman]
	CALL	_memman_free
	ADD	ESP,36
	PUSH	3592
	PUSH	DWORD [_memman]
	CALL	_memman_alloc_4K
	MOV	DWORD [-880+EBP],EAX
	CALL	_init_palette
	MOVSX	EAX,WORD [4086]
	PUSH	EAX
	MOVSX	EAX,WORD [4084]
	PUSH	EAX
	PUSH	DWORD [4088]
	PUSH	DWORD [_memman]
	PUSH	DWORD [-880+EBP]
	CALL	_sheet
	MOV	EDX,DWORD [-880+EBP]
	MOV	EAX,DWORD [EDX]
	MOV	DWORD [4068],EAX
	LEA	EAX,DWORD [-588+EBP]
	PUSH	0
	PUSH	EAX
	PUSH	128
	PUSH	ESI
	CALL	_fifo32_init
	LEA	EAX,DWORD [-716+EBP]
	ADD	ESP,44
	PUSH	0
	PUSH	EAX
	PUSH	32
	PUSH	EBX
	CALL	_fifo32_init
	PUSH	256
	PUSH	ESI
	CALL	_init_keyboard
	LEA	EAX,DWORD [-732+EBP]
	PUSH	EAX
	PUSH	512
	PUSH	ESI
	CALL	_enable_mouse
	ADD	ESP,36
	MOV	EDI,DWORD [-880+EBP]
	MOV	DWORD [-900+EBP],0
	MOV	ECX,DWORD [EDI]
	MOV	EDI,2
	MOV	DWORD [-904+EBP],0
	MOV	EDX,DWORD [8+ECX]
	SUB	EDX,16
	MOV	EAX,EDX
	CDQ
	IDIV	EDI
	MOV	EDX,DWORD [12+ECX]
	MOV	DWORD [-888+EBP],EAX
	SUB	EDX,44
	MOV	EAX,EDX
	CDQ
	IDIV	EDI
	MOV	EDX,DWORD [-880+EBP]
	MOV	DWORD [-892+EBP],EAX
	ADD	EDX,32
	MOV	DWORD [-896+EBP],EDX
	MOV	AL,BYTE [4081]
	PUSH	237
	SAR	AL,4
	PUSH	EBX
	MOV	ECX,EAX
	AND	ECX,7
	MOV	DWORD [-908+EBP],ECX
	MOV	DWORD [-912+EBP],-1
	MOV	DWORD [-916+EBP],0
	CALL	_fifo32_put
	PUSH	DWORD [-908+EBP]
	PUSH	EBX
	LEA	EBX,DWORD [-844+EBP]
	CALL	_fifo32_put
	PUSH	DWORD [_memman]
	CALL	_Command_int
	CALL	_timer_alloc
	PUSH	1
	PUSH	ESI
	PUSH	EAX
	MOV	DWORD [-920+EBP],EAX
	CALL	_timer_init
	ADD	ESP,32
	PUSH	50
	PUSH	DWORD [-920+EBP]
	CALL	_timer_settime
	PUSH	DWORD [_memman]
	CALL	_task_init
	PUSH	0
	PUSH	1
	PUSH	EAX
	MOV	DWORD [-924+EBP],EAX
	MOV	DWORD [-20+EBP],EAX
	CALL	_task_run
	PUSH	56
	PUSH	8
	PUSH	EBX
	PUSH	DWORD [_memman]
	PUSH	DWORD [-880+EBP]
	MOV	DWORD [-820+EBP],52
	MOV	DWORD [-824+EBP],144
	MOV	DWORD [-844+EBP],1684957559
	MOV	DWORD [-840+EBP],3241839
	CALL	_Make_Win1
	ADD	ESP,44
	PUSH	0
	PUSH	EBX
	CALL	_Sel_window
	PUSH	100
	PUSH	100
	LEA	EAX,DWORD [-876+EBP]
	PUSH	EAX
	PUSH	DWORD [_memman]
	PUSH	DWORD [-880+EBP]
	MOV	DWORD [-852+EBP],512
	MOV	DWORD [-856+EBP],612
	MOV	DWORD [-876+EBP],1936617283
	MOV	DWORD [-872+EBP],6646895
	CALL	_Make_Console
	CALL	_task_alloc
	PUSH	65536
	PUSH	DWORD [_memman]
	MOV	EDI,EAX
	CALL	_memman_alloc_4K
	ADD	EAX,65524
	MOV	EDX,DWORD [-848+EBP]
	MOV	DWORD [72+EDI],EAX
	ADD	ESP,36
	MOV	DWORD [48+EDI],_console_task
	MOV	DWORD [88+EDI],8
	MOV	DWORD [92+EDI],16
	MOV	DWORD [96+EDI],8
	MOV	DWORD [100+EDI],8
	MOV	DWORD [104+EDI],8
	MOV	DWORD [108+EDI],8
	MOV	DWORD [4+EAX],EDX
	MOV	EDX,DWORD [-884+EBP]
	MOV	EAX,DWORD [72+EDI]
	MOV	DWORD [8+EAX],EDX
	PUSH	2
	PUSH	2
	PUSH	EDI
	CALL	_task_run
	PUSH	DWORD [-880+EBP]
	MOV	DWORD [-928+EBP],16
	MOV	DWORD [-932+EBP],0
	CALL	_updown_mouse
L62:
	ADD	ESP,16
L59:
	LEA	EBX,DWORD [-76+EBP]
	PUSH	EBX
	CALL	_fifo32_status
	POP	EDX
	TEST	EAX,EAX
	JLE	L5
	CMP	DWORD [-912+EBP],0
	JS	L64
L5:
	LEA	EBX,DWORD [-44+EBP]
	CALL	_io_cli
	PUSH	EBX
	CALL	_fifo32_status
	POP	ESI
	TEST	EAX,EAX
	JE	L65
	PUSH	EBX
	CALL	_fifo32_get
	MOV	ESI,EAX
	CALL	_io_sti
	POP	ECX
	LEA	EAX,DWORD [-256+ESI]
	CMP	EAX,255
	JBE	L66
	LEA	EAX,DWORD [-512+ESI]
	CMP	EAX,255
	JBE	L67
	CMP	ESI,1
	JG	L59
	TEST	ESI,ESI
	JE	L54
	PUSH	0
	PUSH	EBX
	PUSH	DWORD [-920+EBP]
	CALL	_timer_init
	ADD	ESP,12
	CMP	DWORD [-932+EBP],0
	JS	L56
	MOV	DWORD [-932+EBP],7
L56:
	PUSH	50
	PUSH	DWORD [-920+EBP]
	CALL	_timer_settime
	POP	EAX
	POP	EDX
	CMP	DWORD [-932+EBP],0
	JS	L59
	MOV	EAX,DWORD [-928+EBP]
	PUSH	45
	ADD	EAX,7
	PUSH	EAX
	PUSH	31
	PUSH	DWORD [-928+EBP]
	MOVZX	EAX,BYTE [-932+EBP]
	PUSH	EAX
	MOV	EAX,DWORD [-816+EBP]
	PUSH	DWORD [8+EAX]
	PUSH	DWORD [EAX]
	CALL	_boxfill8
	MOV	EAX,DWORD [-928+EBP]
	PUSH	46
	ADD	EAX,8
	PUSH	EAX
	MOV	EAX,DWORD [-880+EBP]
	PUSH	31
	PUSH	DWORD [-928+EBP]
	PUSH	DWORD [-816+EBP]
	PUSH	DWORD [EAX]
	CALL	_sheet_refresh
	ADD	ESP,52
	JMP	L59
L54:
	PUSH	1
	PUSH	EBX
	PUSH	DWORD [-920+EBP]
	CALL	_timer_init
	ADD	ESP,12
	CMP	DWORD [-932+EBP],0
	JS	L56
	MOV	DWORD [-932+EBP],0
	JMP	L56
L67:
	MOV	EDX,ESI
	MOVZX	EAX,DL
	PUSH	EAX
	LEA	EAX,DWORD [-732+EBP]
	PUSH	EAX
	CALL	_mouse_decode
	POP	ECX
	POP	EBX
	TEST	EAX,EAX
	JE	L59
	MOV	ECX,DWORD [-724+EBP]
	MOV	EAX,DWORD [-728+EBP]
	ADD	DWORD [-892+EBP],ECX
	ADD	DWORD [-888+EBP],EAX
	JS	L68
L47:
	CMP	DWORD [-892+EBP],0
	JS	L69
L48:
	MOV	ECX,DWORD [-880+EBP]
	MOV	EDX,DWORD [ECX]
	MOV	EAX,DWORD [8+EDX]
	DEC	EAX
	CMP	DWORD [-888+EBP],EAX
	JLE	L49
	MOV	DWORD [-888+EBP],EAX
L49:
	MOV	EAX,DWORD [12+EDX]
	DEC	EAX
	CMP	DWORD [-892+EBP],EAX
	JLE	L50
	MOV	DWORD [-892+EBP],EAX
L50:
	PUSH	DWORD [-892+EBP]
	MOV	EAX,DWORD [-896+EBP]
	MOV	EDX,DWORD [-880+EBP]
	PUSH	DWORD [-888+EBP]
	PUSH	DWORD [20+EAX]
	PUSH	DWORD [EDX]
	CALL	_sheet_slide
	ADD	ESP,16
	TEST	DWORD [-720+EBP],1
	JE	L59
	MOV	EAX,DWORD [-892+EBP]
	MOV	ECX,DWORD [-880+EBP]
	SUB	EAX,8
	PUSH	EAX
	MOV	EAX,DWORD [-888+EBP]
	SUB	EAX,80
	PUSH	EAX
	PUSH	DWORD [-816+EBP]
	PUSH	DWORD [ECX]
	CALL	_sheet_slide
	JMP	L62
L69:
	MOV	DWORD [-892+EBP],0
	JMP	L48
L68:
	MOV	DWORD [-888+EBP],0
	JMP	L47
L66:
	CMP	ESI,383
	JG	L9
	CMP	DWORD [-904+EBP],0
	JNE	L10
	MOV	AL,BYTE [_keytable0.1-256+ESI]
L63:
	MOV	BYTE [-780+EBP],AL
L12:
	MOV	DL,BYTE [-780+EBP]
	LEA	EAX,DWORD [-65+EDX]
	CMP	AL,25
	JA	L13
	TEST	DWORD [-908+EBP],4
	JNE	L61
	CMP	DWORD [-904+EBP],0
	JE	L15
L13:
	MOV	AL,BYTE [-780+EBP]
	TEST	AL,AL
	JE	L17
	CMP	DWORD [-900+EBP],0
	JNE	L18
	CMP	DWORD [-928+EBP],127
	JG	L17
	PUSH	1
	LEA	EAX,DWORD [-780+EBP]
	PUSH	EAX
	MOV	ECX,DWORD [-880+EBP]
	PUSH	0
	PUSH	7
	PUSH	31
	PUSH	DWORD [-928+EBP]
	PUSH	DWORD [-816+EBP]
	MOV	BYTE [-779+EBP],0
	PUSH	DWORD [ECX]
	CALL	_putfonts8_asc_sht
	ADD	ESP,32
	ADD	DWORD [-928+EBP],8
L17:
	CMP	ESI,270
	JE	L70
L21:
	CMP	ESI,284
	JE	L71
L25:
	CMP	ESI,271
	JE	L72
L27:
	CMP	ESI,298
	JE	L73
L30:
	CMP	ESI,310
	JE	L74
L31:
	CMP	ESI,426
	JE	L75
L32:
	CMP	ESI,438
	JE	L76
L33:
	CMP	ESI,285
	JE	L77
L34:
	CMP	ESI,413
	JE	L78
L35:
	CMP	ESI,314
	JE	L79
L36:
	CMP	ESI,325
	JE	L80
L37:
	CMP	ESI,326
	JE	L81
L38:
	CMP	ESI,302
	JE	L82
L39:
	CMP	ESI,343
	JE	L83
L40:
	CMP	ESI,506
	JE	L84
L41:
	CMP	ESI,510
	JE	L85
L42:
	CMP	DWORD [-932+EBP],0
	JS	L43
	MOV	EAX,DWORD [-928+EBP]
	PUSH	45
	ADD	EAX,7
	PUSH	EAX
	MOV	EAX,DWORD [-816+EBP]
	PUSH	31
	PUSH	DWORD [-928+EBP]
	PUSH	15
	PUSH	DWORD [8+EAX]
	PUSH	DWORD [EAX]
	CALL	_boxfill8
	ADD	ESP,28
L43:
	MOV	EAX,DWORD [-928+EBP]
	PUSH	46
	ADD	EAX,8
	MOV	ECX,DWORD [-880+EBP]
	PUSH	EAX
	PUSH	31
	PUSH	DWORD [-928+EBP]
	PUSH	DWORD [-816+EBP]
	PUSH	DWORD [ECX]
	CALL	_sheet_refresh
	ADD	ESP,24
	JMP	L59
L85:
	CALL	_wait_KBC_sendready
	PUSH	DWORD [-912+EBP]
	PUSH	96
	CALL	_io_out8
	POP	ESI
	POP	EAX
	JMP	L42
L84:
	MOV	DWORD [-912+EBP],-1
	JMP	L41
L83:
	MOV	EDX,DWORD [-880+EBP]
	MOV	EAX,DWORD [EDX]
	MOV	EAX,DWORD [16+EAX]
	CMP	EAX,2
	JLE	L40
	DEC	EAX
	PUSH	EAX
	MOV	EAX,DWORD [EDX]
	PUSH	DWORD [24+EAX]
	PUSH	DWORD [EDX]
	CALL	_sheet_updown
	ADD	ESP,12
	JMP	L40
L82:
	CMP	DWORD [-916+EBP],0
	JE	L39
	CMP	DWORD [24+EDI],0
	JE	L39
	PUSH	LC1
	PUSH	DWORD [4076]
	CALL	_cons_putstr
	CALL	_io_cli
	LEA	EAX,DWORD [20+EDI]
	MOV	DWORD [56+EDI],EAX
	MOV	DWORD [48+EDI],_asm_end_app
	CALL	_io_sti
	POP	EAX
	POP	EDX
	JMP	L39
L81:
	PUSH	237
	LEA	EBX,DWORD [-76+EBP]
	PUSH	EBX
	XOR	DWORD [-908+EBP],1
	CALL	_fifo32_put
	PUSH	DWORD [-908+EBP]
	PUSH	EBX
	CALL	_fifo32_put
	ADD	ESP,16
	JMP	L38
L80:
	PUSH	237
	LEA	EBX,DWORD [-76+EBP]
	PUSH	EBX
	XOR	DWORD [-908+EBP],2
	CALL	_fifo32_put
	PUSH	DWORD [-908+EBP]
	PUSH	EBX
	CALL	_fifo32_put
	ADD	ESP,16
	JMP	L37
L79:
	PUSH	237
	LEA	EBX,DWORD [-76+EBP]
	PUSH	EBX
	XOR	DWORD [-908+EBP],4
	CALL	_fifo32_put
	PUSH	DWORD [-908+EBP]
	PUSH	EBX
	CALL	_fifo32_put
	ADD	ESP,16
	JMP	L36
L78:
	AND	DWORD [-916+EBP],-2
	JMP	L35
L77:
	OR	DWORD [-916+EBP],1
	JMP	L34
L76:
	AND	DWORD [-904+EBP],-3
	JMP	L33
L75:
	AND	DWORD [-904+EBP],-2
	JMP	L32
L74:
	OR	DWORD [-904+EBP],2
	JMP	L31
L73:
	OR	DWORD [-904+EBP],1
	JMP	L30
L72:
	CMP	DWORD [-900+EBP],0
	JNE	L28
	PUSH	0
	LEA	EAX,DWORD [-876+EBP]
	PUSH	EAX
	MOV	DWORD [-900+EBP],1
	CALL	_Sel_Console
	LEA	EAX,DWORD [-844+EBP]
	PUSH	1
	PUSH	EAX
	CALL	_Sel_window
	MOV	EAX,DWORD [-928+EBP]
	PUSH	46
	ADD	EAX,7
	PUSH	EAX
	MOV	EAX,DWORD [-816+EBP]
	PUSH	31
	PUSH	DWORD [-928+EBP]
	PUSH	0
	PUSH	DWORD [-824+EBP]
	PUSH	DWORD [EAX]
	MOV	DWORD [-932+EBP],-1
	CALL	_boxfill8
	ADD	ESP,44
	PUSH	2
	PUSH	DWORD [120+EDI]
	CALL	_fifo32_put
	POP	ECX
	POP	EBX
	JMP	L27
L28:
	PUSH	1
	LEA	EAX,DWORD [-876+EBP]
	PUSH	EAX
	MOV	DWORD [-900+EBP],0
	CALL	_Sel_Console
	LEA	EAX,DWORD [-844+EBP]
	PUSH	0
	PUSH	EAX
	CALL	_Sel_window
	PUSH	3
	PUSH	DWORD [120+EDI]
	MOV	DWORD [-932+EBP],7
	CALL	_fifo32_put
	ADD	ESP,24
	JMP	L27
L71:
	CMP	DWORD [-900+EBP],0
	JE	L25
	PUSH	266
	PUSH	DWORD [120+EDI]
	CALL	_fifo32_put
	POP	EAX
	POP	EDX
	JMP	L25
L70:
	CMP	DWORD [-900+EBP],0
	JNE	L22
	CMP	DWORD [-928+EBP],16
	JLE	L21
	PUSH	1
	MOV	EAX,DWORD [-880+EBP]
	PUSH	LC0
	PUSH	0
	PUSH	7
	PUSH	31
	PUSH	DWORD [-928+EBP]
	PUSH	DWORD [-816+EBP]
	PUSH	DWORD [EAX]
	CALL	_putfonts8_asc_sht
	ADD	ESP,32
	SUB	DWORD [-928+EBP],8
	JMP	L21
L22:
	PUSH	264
	PUSH	DWORD [120+EDI]
	CALL	_fifo32_put
	POP	ECX
	POP	EBX
	JMP	L21
L18:
	MOVSX	EAX,AL
	ADD	EAX,256
	PUSH	EAX
	PUSH	DWORD [120+EDI]
	CALL	_fifo32_put
	POP	EAX
	POP	EDX
	JMP	L17
L15:
	LEA	EAX,DWORD [32+EDX]
	MOV	BYTE [-780+EBP],AL
	JMP	L13
L61:
	CMP	DWORD [-904+EBP],0
	JE	L13
	JMP	L15
L10:
	MOV	AL,BYTE [_keytable1.2-256+ESI]
	JMP	L63
L9:
	MOV	BYTE [-780+EBP],0
	JMP	L12
L65:
	PUSH	DWORD [-924+EBP]
	CALL	_task_sleep
	CALL	_io_sti
	POP	EBX
	JMP	L59
L64:
	PUSH	EBX
	CALL	_fifo32_get
	MOV	DWORD [-912+EBP],EAX
	CALL	_wait_KBC_sendready
	PUSH	DWORD [-912+EBP]
	PUSH	96
	CALL	_io_out8
	ADD	ESP,12
	JMP	L5
L60:
[SECTION .data]
LC2:
	DB	"%11d",0x00
[SECTION .text]
	GLOBAL	_task_b_main
_task_b_main:
	PUSH	EBP
	MOV	EBP,ESP
	PUSH	EDI
	PUSH	ESI
	XOR	EDI,EDI
	PUSH	EBX
	LEA	EAX,DWORD [-556+EBP]
	SUB	ESP,560
	LEA	EBX,DWORD [-44+EBP]
	PUSH	0
	PUSH	EAX
	PUSH	128
	PUSH	EBX
	CALL	_fifo32_init
	CALL	_timer_alloc
	PUSH	100
	PUSH	EBX
	MOV	ESI,EAX
	PUSH	EAX
	CALL	_timer_init
	PUSH	100
	PUSH	ESI
	CALL	_timer_settime
	ADD	ESP,36
L87:
	LEA	EBX,DWORD [-44+EBP]
	CALL	_io_cli
	PUSH	EBX
	INC	EDI
	CALL	_fifo32_status
	POP	EDX
	TEST	EAX,EAX
	JE	L93
	PUSH	EBX
	CALL	_fifo32_get
	MOV	EBX,EAX
	CALL	_io_sti
	POP	EAX
	CMP	EBX,100
	JNE	L87
	PUSH	EDI
	LEA	EBX,DWORD [-572+EBP]
	PUSH	LC2
	PUSH	EBX
	CALL	_sprintf
	PUSH	11
	PUSH	EBX
	PUSH	17
	PUSH	14
	PUSH	28
	PUSH	24
	PUSH	DWORD [8+EBP]
	PUSH	DWORD [12+EBP]
	CALL	_putfonts8_asc_sht
	ADD	ESP,44
	PUSH	100
	PUSH	ESI
	CALL	_timer_settime
	POP	ECX
	POP	EBX
	JMP	L87
L93:
	CALL	_io_sti
	JMP	L87
	GLOBAL	_memman
[SECTION .data]
	ALIGNB	4
_memman:
	RESB	4
	GLOBAL	_mem_total
[SECTION .data]
	ALIGNB	4
_mem_total:
	RESB	4
