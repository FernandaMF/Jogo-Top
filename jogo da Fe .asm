loadn r0, #1010
loadn r1, #'w'
loadn r2, #'a'
loadn r3, #'s'
loadn r4, #'d'
loadn r5, #' '

jmp main

main:

	inchar r6			;le o valor do teclado
	cmp r6, r1			;compara o comando do teclado com o 'w'
	ceq MoveCima		;se for igual, move carrinho para cima
	cmp r6, r2
	ceq MoveEsq
	cmp r6, r3
	ceq MoveBaixo
	cmp r6, r4
	ceq MoveDir
	
	
jmp main

MoveCima:

	push r6
	
	loadn r6, #599
	cmp r0, r6
	jel NaoMexeCima
	
	call ApagarCarro
	loadn r7, #40
	sub r0, r0, r7
	call PrintCarro
	
NaoMexeCima:

	pop r6
	
rts


MoveBaixo
	 
	push r6
	
	loadn r6, #1199
	cmp r0, r6
	jeg NaoMexeBaixo
	
	call ApagarCarro
	loadn r7, #40
	add r0, r0, r7
	call PrintCarro
	
NaoMexeBaixo:

	pop r6
	
rts


MoverEsquerda

	push r6
	
	loadn r7, #600
	cmp r0, r7
	jel NaoMexeEsquerda
	
	call ApagarCarro
	dec r0
	call PrintCarro
	
NaoMexeEsquerda:

	pop r6
	
rts

MoverDireita

	push r6
	
	loadn r7, #1199
	cmp r0, r7
	jeg NaoMexeDireita
	
	call ApagarCarro
	inc r0
	call PrintCarro
	
NaoMexeDireita:

	pop r6
	
rts



	




















