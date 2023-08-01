
_automatic:

;project2.c,7 :: 		void automatic(){
;project2.c,8 :: 		while(1){
L_automatic0:
;project2.c,9 :: 		adcon1=7;
	MOVLW      7
	MOVWF      ADCON1+0
;project2.c,10 :: 		flag=0,i=0,j=0,trisb.b0=1,trisb.b1=1,trisc=0,trisa=0;
	CLRF       _flag+0
	CLRF       _flag+1
	CLRF       _i+0
	CLRF       _i+1
	CLRF       _j+0
	CLRF       _j+1
	BSF        TRISB+0, 0
	BSF        TRISB+0, 1
	CLRF       TRISC+0
	CLRF       TRISA+0
;project2.c,11 :: 		trisd=0,portc=0,portd=0,trisb.b2=0,trisb.b3=0,trisb.b4=0;
	CLRF       TRISD+0
	CLRF       PORTC+0
	CLRF       PORTD+0
	BCF        TRISB+0, 2
	BCF        TRISB+0, 3
	BCF        TRISB+0, 4
;project2.c,12 :: 		trisb.b5=0,trisb.b6=0,porta.B0=0,porta.B1=0,porta.B2=0;
	BCF        TRISB+0, 5
	BCF        TRISB+0, 6
	BCF        PORTA+0, 0
	BCF        PORTA+0, 1
	BCF        PORTA+0, 2
;project2.c,13 :: 		porta.B5=0,portb.B2=0,porta.B3=0,portb.B3=0,portb.B4=0;
	BCF        PORTA+0, 5
	BCF        PORTB+0, 2
	BCF        PORTA+0, 3
	BCF        PORTB+0, 3
	BCF        PORTB+0, 4
;project2.c,14 :: 		portb.B5=0,portb.B6=0,gie_bit=1,inte_bit=1,intedg_bit=1;
	BCF        PORTB+0, 5
	BCF        PORTB+0, 6
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
	BSF        INTEDG_bit+0, BitPos(INTEDG_bit+0)
;project2.c,15 :: 		if(portb.b0==0){
	BTFSC      PORTB+0, 0
	GOTO       L_automatic2
;project2.c,16 :: 		portb.B3=1;
	BSF        PORTB+0, 3
;project2.c,17 :: 		portb.B4=1;
	BSF        PORTB+0, 4
;project2.c,18 :: 		portb.B5=1;
	BSF        PORTB+0, 5
;project2.c,19 :: 		portb.B6=1;
	BSF        PORTB+0, 6
;project2.c,20 :: 		while(i<=23){
L_automatic3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic46
	MOVF       _i+0, 0
	SUBLW      23
L__automatic46:
	BTFSS      STATUS+0, 0
	GOTO       L_automatic4
;project2.c,21 :: 		if(flag==0) {
	MOVLW      0
	XORWF      _flag+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic47
	MOVLW      0
	XORWF      _flag+0, 0
L__automatic47:
	BTFSS      STATUS+0, 2
	GOTO       L_automatic5
;project2.c,22 :: 		portc=count1[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _count1+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project2.c,23 :: 		porta.B0=1;
	BSF        PORTA+0, 0
;project2.c,24 :: 		porta.B1=0;
	BCF        PORTA+0, 1
;project2.c,25 :: 		porta.B2=0;
	BCF        PORTA+0, 2
;project2.c,26 :: 		porta.B5=1;
	BSF        PORTA+0, 5
;project2.c,27 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;project2.c,28 :: 		porta.B3=0;
	BCF        PORTA+0, 3
;project2.c,29 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_automatic6:
	DECFSZ     R13+0, 1
	GOTO       L_automatic6
	DECFSZ     R12+0, 1
	GOTO       L_automatic6
	DECFSZ     R11+0, 1
	GOTO       L_automatic6
	NOP
	NOP
;project2.c,30 :: 		if(i==20){
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic48
	MOVLW      20
	XORWF      _i+0, 0
L__automatic48:
	BTFSS      STATUS+0, 2
	GOTO       L_automatic7
;project2.c,31 :: 		while(i<=23){
L_automatic8:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic49
	MOVF       _i+0, 0
	SUBLW      23
L__automatic49:
	BTFSS      STATUS+0, 0
	GOTO       L_automatic9
;project2.c,32 :: 		if(flag==0){
	MOVLW      0
	XORWF      _flag+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic50
	MOVLW      0
	XORWF      _flag+0, 0
L__automatic50:
	BTFSS      STATUS+0, 2
	GOTO       L_automatic10
;project2.c,33 :: 		portc=count1[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _count1+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project2.c,34 :: 		porta.B0=1;
	BSF        PORTA+0, 0
;project2.c,35 :: 		porta.B1=0;
	BCF        PORTA+0, 1
;project2.c,36 :: 		porta.B2=0;
	BCF        PORTA+0, 2
;project2.c,37 :: 		porta.B5=0;
	BCF        PORTA+0, 5
;project2.c,38 :: 		portb.B2=1;
	BSF        PORTB+0, 2
;project2.c,39 :: 		porta.B3=0;
	BCF        PORTA+0, 3
;project2.c,40 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;project2.c,41 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_automatic11:
	DECFSZ     R13+0, 1
	GOTO       L_automatic11
	DECFSZ     R12+0, 1
	GOTO       L_automatic11
	DECFSZ     R11+0, 1
	GOTO       L_automatic11
	NOP
	NOP
;project2.c,42 :: 		}
L_automatic10:
;project2.c,43 :: 		}
	GOTO       L_automatic8
L_automatic9:
;project2.c,44 :: 		}
L_automatic7:
;project2.c,45 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;project2.c,46 :: 		}
L_automatic5:
;project2.c,48 :: 		}
	GOTO       L_automatic3
L_automatic4:
;project2.c,49 :: 		i=0;
	CLRF       _i+0
	CLRF       _i+1
;project2.c,50 :: 		while(j<=15){
L_automatic12:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic51
	MOVF       _j+0, 0
	SUBLW      15
L__automatic51:
	BTFSS      STATUS+0, 0
	GOTO       L_automatic13
;project2.c,51 :: 		if(flag==0){
	MOVLW      0
	XORWF      _flag+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic52
	MOVLW      0
	XORWF      _flag+0, 0
L__automatic52:
	BTFSS      STATUS+0, 2
	GOTO       L_automatic14
;project2.c,52 :: 		portc=count2[j];
	MOVF       _j+0, 0
	MOVWF      R0+0
	MOVF       _j+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _count2+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project2.c,53 :: 		porta.B0=0;
	BCF        PORTA+0, 0
;project2.c,54 :: 		porta.B1=0;
	BCF        PORTA+0, 1
;project2.c,55 :: 		porta.B2=1;
	BSF        PORTA+0, 2
;project2.c,56 :: 		porta.B5=0;
	BCF        PORTA+0, 5
;project2.c,57 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;project2.c,58 :: 		porta.B3=1;
	BSF        PORTA+0, 3
;project2.c,59 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_automatic15:
	DECFSZ     R13+0, 1
	GOTO       L_automatic15
	DECFSZ     R12+0, 1
	GOTO       L_automatic15
	DECFSZ     R11+0, 1
	GOTO       L_automatic15
	NOP
	NOP
;project2.c,60 :: 		if(j==12){
	MOVLW      0
	XORWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic53
	MOVLW      12
	XORWF      _j+0, 0
L__automatic53:
	BTFSS      STATUS+0, 2
	GOTO       L_automatic16
;project2.c,61 :: 		while(j<=15){
L_automatic17:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic54
	MOVF       _j+0, 0
	SUBLW      15
L__automatic54:
	BTFSS      STATUS+0, 0
	GOTO       L_automatic18
;project2.c,62 :: 		if(flag==0){
	MOVLW      0
	XORWF      _flag+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__automatic55
	MOVLW      0
	XORWF      _flag+0, 0
L__automatic55:
	BTFSS      STATUS+0, 2
	GOTO       L_automatic19
;project2.c,63 :: 		portc=count2[j];
	MOVF       _j+0, 0
	MOVWF      R0+0
	MOVF       _j+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _count2+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;project2.c,64 :: 		porta.B0=0;
	BCF        PORTA+0, 0
;project2.c,65 :: 		porta.B1=1;
	BSF        PORTA+0, 1
;project2.c,66 :: 		porta.B2=0;
	BCF        PORTA+0, 2
;project2.c,67 :: 		porta.B5=0;
	BCF        PORTA+0, 5
;project2.c,68 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;project2.c,69 :: 		porta.B3=1;
	BSF        PORTA+0, 3
;project2.c,70 :: 		j++;
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;project2.c,71 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_automatic20:
	DECFSZ     R13+0, 1
	GOTO       L_automatic20
	DECFSZ     R12+0, 1
	GOTO       L_automatic20
	DECFSZ     R11+0, 1
	GOTO       L_automatic20
	NOP
	NOP
;project2.c,72 :: 		}
L_automatic19:
;project2.c,73 :: 		}
	GOTO       L_automatic17
L_automatic18:
;project2.c,74 :: 		}
L_automatic16:
;project2.c,75 :: 		j++;
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;project2.c,76 :: 		}
L_automatic14:
;project2.c,77 :: 		}
	GOTO       L_automatic12
L_automatic13:
;project2.c,78 :: 		j=0;
	CLRF       _j+0
	CLRF       _j+1
;project2.c,79 :: 		}
L_automatic2:
;project2.c,80 :: 		}
	GOTO       L_automatic0
;project2.c,81 :: 		}
L_end_automatic:
	RETURN
; end of _automatic

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;project2.c,82 :: 		void interrupt(){
;project2.c,83 :: 		if(intf_bit==1){
	BTFSS      INTF_bit+0, BitPos(INTF_bit+0)
	GOTO       L_interrupt21
;project2.c,84 :: 		portb.b3=0;
	BCF        PORTB+0, 3
;project2.c,85 :: 		portb.b4=0;
	BCF        PORTB+0, 4
;project2.c,86 :: 		portb.b5=0;
	BCF        PORTB+0, 5
;project2.c,87 :: 		portb.b6=0;
	BCF        PORTB+0, 6
;project2.c,88 :: 		if (portb.B1==1){
	BTFSS      PORTB+0, 1
	GOTO       L_interrupt22
;project2.c,89 :: 		flag=1;
	MOVLW      1
	MOVWF      _flag+0
	MOVLW      0
	MOVWF      _flag+1
;project2.c,90 :: 		if(porta.b5==1&&porta.B0==1){
	BTFSS      PORTA+0, 5
	GOTO       L_interrupt25
	BTFSS      PORTA+0, 0
	GOTO       L_interrupt25
L__interrupt44:
;project2.c,91 :: 		for(k=3;k>=0;k--){
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
L_interrupt26:
	MOVLW      128
	XORWF      _k+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt58
	MOVLW      0
	SUBWF      _k+0, 0
L__interrupt58:
	BTFSS      STATUS+0, 0
	GOTO       L_interrupt27
;project2.c,92 :: 		porta.b5=0;
	BCF        PORTA+0, 5
;project2.c,93 :: 		portb.b2=1;
	BSF        PORTB+0, 2
;project2.c,94 :: 		portb.B5=1;
	BSF        PORTB+0, 5
;project2.c,95 :: 		portb.b6=1;
	BSF        PORTB+0, 6
;project2.c,96 :: 		portc=k;
	MOVF       _k+0, 0
	MOVWF      PORTC+0
;project2.c,97 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt29:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt29
	DECFSZ     R12+0, 1
	GOTO       L_interrupt29
	DECFSZ     R11+0, 1
	GOTO       L_interrupt29
	NOP
	NOP
;project2.c,98 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt59
	MOVLW      0
	XORWF      _k+0, 0
L__interrupt59:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt30
;project2.c,99 :: 		porta.b3=1;
	BSF        PORTA+0, 3
;project2.c,100 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;project2.c,101 :: 		porta.b2=1;
	BSF        PORTA+0, 2
;project2.c,102 :: 		porta.b0=0;
	BCF        PORTA+0, 0
;project2.c,103 :: 		portd=k;
	MOVF       _k+0, 0
	MOVWF      PORTD+0
;project2.c,104 :: 		portc=k;
	MOVF       _k+0, 0
	MOVWF      PORTC+0
;project2.c,105 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt31:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt31
	DECFSZ     R12+0, 1
	GOTO       L_interrupt31
	DECFSZ     R11+0, 1
	GOTO       L_interrupt31
	NOP
	NOP
;project2.c,106 :: 		}
L_interrupt30:
;project2.c,91 :: 		for(k=3;k>=0;k--){
	MOVLW      1
	SUBWF      _k+0, 1
	BTFSS      STATUS+0, 0
	DECF       _k+1, 1
;project2.c,107 :: 		}
	GOTO       L_interrupt26
L_interrupt27:
;project2.c,108 :: 		}
	GOTO       L_interrupt32
L_interrupt25:
;project2.c,109 :: 		else if(porta.b2==1&&porta.b3==1){
	BTFSS      PORTA+0, 2
	GOTO       L_interrupt35
	BTFSS      PORTA+0, 3
	GOTO       L_interrupt35
L__interrupt43:
;project2.c,110 :: 		for(k=3;k>=0;k--){
	MOVLW      3
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
L_interrupt36:
	MOVLW      128
	XORWF      _k+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt60
	MOVLW      0
	SUBWF      _k+0, 0
L__interrupt60:
	BTFSS      STATUS+0, 0
	GOTO       L_interrupt37
;project2.c,111 :: 		porta.B2=0;
	BCF        PORTA+0, 2
;project2.c,112 :: 		porta.B1=1;
	BSF        PORTA+0, 1
;project2.c,113 :: 		portb.b3=1;
	BSF        PORTB+0, 3
;project2.c,114 :: 		portb.b4=1;
	BSF        PORTB+0, 4
;project2.c,115 :: 		portc=k;
	MOVF       _k+0, 0
	MOVWF      PORTC+0
;project2.c,116 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt39:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt39
	DECFSZ     R12+0, 1
	GOTO       L_interrupt39
	DECFSZ     R11+0, 1
	GOTO       L_interrupt39
	NOP
	NOP
;project2.c,117 :: 		if(k==0){
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt61
	MOVLW      0
	XORWF      _k+0, 0
L__interrupt61:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt40
;project2.c,118 :: 		porta.b3=0;
	BCF        PORTA+0, 3
;project2.c,119 :: 		porta.B0=1;
	BSF        PORTA+0, 0
;project2.c,120 :: 		porta.B1=0;
	BCF        PORTA+0, 1
;project2.c,121 :: 		porta.B5=1;
	BSF        PORTA+0, 5
;project2.c,122 :: 		portd=k;
	MOVF       _k+0, 0
	MOVWF      PORTD+0
;project2.c,123 :: 		portc=k;
	MOVF       _k+0, 0
	MOVWF      PORTC+0
;project2.c,124 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt41:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt41
	DECFSZ     R12+0, 1
	GOTO       L_interrupt41
	DECFSZ     R11+0, 1
	GOTO       L_interrupt41
	NOP
	NOP
;project2.c,125 :: 		}
L_interrupt40:
;project2.c,110 :: 		for(k=3;k>=0;k--){
	MOVLW      1
	SUBWF      _k+0, 1
	BTFSS      STATUS+0, 0
	DECF       _k+1, 1
;project2.c,126 :: 		}
	GOTO       L_interrupt36
L_interrupt37:
;project2.c,127 :: 		}
L_interrupt35:
L_interrupt32:
;project2.c,128 :: 		}
L_interrupt22:
;project2.c,129 :: 		if(portb.b0==0){
	BTFSC      PORTB+0, 0
	GOTO       L_interrupt42
;project2.c,130 :: 		intf_bit=0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;project2.c,131 :: 		automatic();
	CALL       _automatic+0
;project2.c,132 :: 		}
L_interrupt42:
;project2.c,133 :: 		}
L_interrupt21:
;project2.c,134 :: 		}
L_end_interrupt:
L__interrupt57:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;project2.c,135 :: 		void main(){
;project2.c,136 :: 		intf_bit=0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;project2.c,137 :: 		automatic();
	CALL       _automatic+0
;project2.c,138 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
