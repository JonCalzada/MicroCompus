#INCLUDE <P16f877A.INC>

CONTA EQU H'20'

ORG 0
GOTO INICIO
ORG 5

INICIO:
	CLRF CONTA

INCREMENTA_1
	INCF CONTA,1
	MOVF CONTA,W
	SUBLW 0X09
	BTFSS STATUS,Z
	
CON=0X09
	GOTO INCREMENTA_1
	MOVLW 0X10
	MOVWF CONTA
	
INCREMENTA_2
	INCF CONTA,1
	MOVF CONTA, W
	SUBLW 0X19
	BTFSS STATUS,Z

CON=0X19
	GOTO INCREMENTA_2
	MOVLW 0X20
	MOVWF CONTA
	GOTO INICIO

END