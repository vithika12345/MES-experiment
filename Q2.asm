ORG 0000H

MOV R0, 50H        ; R0 = A
MOV R1, 51H        ; R1 = B

CHECK:
MOV A, R0
JZ A_ZERO          ; If A = 0

MOV A, R1
JZ B_ZERO          ; If B = 0

DEC R0
DEC R1
SJMP CHECK

A_ZERO:
MOV A, R1
JZ EQUAL           ; Both zero → equal
MOV 52H, #0FFH     ; A < B
SJMP STOP

B_ZERO:
MOV 52H, #01H      ; A > B
SJMP STOP

EQUAL:
MOV 52H, #00H      ; A = B

STOP:
SJMP STOP
END
