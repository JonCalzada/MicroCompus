PROCESSOR 16f877
INCLUDE <p16f877.inc>
K equ H'20'
L equ H'21'
C1 equ H'22'
R1 equ H'23'
ORG 0
 GOTO INICIO
 ORG 5
INICIO: 

 MOVF K,W
 ADDWF L,W
 MOVWF R1
 
 
BTFSS STATUS,C

GOTO ES_CERO

ES_UNO:
MOVLW 1
	GOTO ENVIA


ES_CERO:
CLRW

ENVIA: 
MOVWF R1



GOTO INICIO
 END
