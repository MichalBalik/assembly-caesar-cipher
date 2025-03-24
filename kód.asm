	byte 00010001b ;; A-
	byte 11000001b	; znak 'B' -
	BYTE 01100011b 	; znak 'C' -
	BYTE 10000101b 	; znak 'D' -
	BYTE 01100001b	; znak 'E' -	
	BYTE  01110001b	; znak 'F' -
	BYTE 00010001b  ; znak 'A' -
	BYTE 10001001b  
	BYTE 11111001b	
	BYTE 11111101b ; ; znak '-' 

uvodneMenu:
mvi a,0
mvi b,0
mvi c,0
mvi d,0

mvi c,2
mmr a,c
out 1110b,a
mvi c,4
mmr a,c
out 1101b,a

mvi c,01001001b
out 1011b,c
out 0111b,c

mvi d,1
zaciatokCyklu:
	;;stlacene 0
	inn	a,1110b		
	ani	a,00001111b	
	cmi	a,0111b	
	jzr	sifrujNulou
	;;stlacene 1
	inn	a,1110b	
	ani	a,00001111b	
	cmi	a,1011b		
	jzr	sifrujJednotkou

	;;stlacena 2
	ani	a,00001111b	
	cmi	a,1101b		
	jzr	sifrujDvojkou

	ani	a,00001111b	
	cmi	a,1110b		
	jzr	sifrujTrojkou

	;; stlacene 8 end
	inn	a,1011b		
	ani	a,00001111b	
	cmi	a,0111b		

	jzr	end 

	;; stlacene 8 end
	inn	a,1011b		
	ani	a,00001111b	
	cmi	a,1011b		
	jzr	uvodneMenu 

	;;stlacene A
	inn	a,1011b		
	ani	a,00001111b	
	cmi	a,1101b		
	mvi b,0
	jzr	sifruj 

	;;stlacene B
	inn	a,1011b		
	ani	a,00001111b	
	cmi	a,1110b		
	mvi b,1
	jzr	sifruj 

	;;stlacene C
	inn	a,0111b		
	ani	a,00001111b	
	cmi	a,0111b		
	mvi b,2
	jzr	sifruj


	;;stlaceme d
	inn	a,0111b		
	ani	a,00001111b	
	cmi	a,1011b		
	mvi b,3
	jzr	sifruj

	;;stlaceme e
	inn	a,0111b		
	ani	a,00001111b	
	cmi	a,1101b		
	mvi b,4
	jzr	sifruj

	;;stlaceme F
	inn	a,0111b		
	ani	a,00001111b	
	cmi	a,1110b		
	mvi b,5
	jzr	sifruj


	inn	a,1101b		
	ani	a,00001111b	
	cmi	a,0111b		
	jzr	sifrujstyri


	ani	a,00001111b	
	cmi	a,1011b		
	jzr	sifrujpat


	ani	a,00001111b	
	cmi	a,1101b		
	jzr	sifrujsest



	ani	a,00001111b	
	cmi	a,1110b		
	jzr	sifrujsedem





jmp zaciatokCyklu
	

sifruj:
mov c,b
mmr a,c
out 1110b,a




mvi c,9
mmr a,c
out 1011b,a

add b,d
mov c,b
cmi b,6
jnc odcitanie

mmr a,b
out 0111b,a



jmp	cakaj

odcitanie:
sub b,d
mmr a,b
out 1110b,a
add b,d
sbi b,6
jmp vypisZasifrovanehoPismena


vypisZasifrovanehoPismena:

mmr a,b
out 0111b,a
jmp cakaj


sifrujJednotkou:
mvi d,1
mvi a,10011111b
out 1101b,a
mvi b,0
jmp sifruj

sifrujDvojkou:
mvi d,2
mvi a,00100101b
out 1101b,a
mvi b,0
jmp sifruj

sifrujTrojkou:



mvi d,3
mvi a,00001101b
out 1101b,a
mvi b,0
jmp sifruj

sifrujNulou:
;; sifrovanie nulou vrati nezasifrovany text
mvi d,0
mvi a,00000011b
out 1101b,a
mvi b,0
jmp sifruj
sifrujstyri:

mvi d,4
mvi a,10011001b
out 1101b,a
mvi b,0
jmp sifruj

sifrujpat:

mvi d,5
mvi a,01001001b
out 1101b,a
mvi b,0
jmp sifruj
sifrujsest:

mvi d,6
mvi a,01000001b
out 1101b,a
mvi b,0
jmp sifruj

sifrujsedem:

mvi d,7
mvi a,00011111b
out 1101b,a
mvi b,0
jmp sifruj

cakaj:
	inn	a,0	
	ani	a,00001111b	
	cmi	a,1111b	
	jnz cakaj
	jmp zaciatokCyklu






	mvi b,'A'	
	mvi c,3
	add b,c

mvi c,0
mmr a,c
out 1110b, A
out 1110b, B

end:
