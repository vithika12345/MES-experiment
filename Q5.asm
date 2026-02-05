ORG 0000H
       
       
MOV A,#00H     
MOV B, #05H
ORL A,B
MOV R1,A
       
MOV A, #08H
MOV B, #00H
RL A
RL A
RL A
RL A
MOV B,R1
XRL A, #00H
       
HERE : SJMP HERE
      END
