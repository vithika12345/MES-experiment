ORG 0000H

        MOV R0, #40H
        MOV R1, #40H

COMPACT_LOOP:
        MOV A, @R0
        CJNE A, #0FFH, WRITE_BYTE

SKIP_WRITE:
        INC R0
        CJNE R0, #60H, COMPACT_LOOP
        SJMP FILL_ZERO

WRITE_BYTE:
        MOV @R1, A
        INC R1
        SJMP SKIP_WRITE

FILL_ZERO:
ZERO_LOOP:
WRITE_BYTE:
        MOV @R1, A
        INC R1
        SJMP SKIP_WRITE


FILL_ZERO:
ZERO_LOOP:
        CJNE R1, #66H, ZERO_WRITE
        SJMP DONE

ZERO_WRITE:
        MOV @R1, #00H
        INC R1
        SJMP ZERO_LOOP

DONE:
        SJMP DONE

        END
