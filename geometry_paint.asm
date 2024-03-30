;--------------------------------------------Portada-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Tarea de ASM: Geometry Paint
; Curso: Arquitectura de Computadores
; Grupo: 2
; Escuela de Computacion
; Instituto Tecnologico de Costa Rica
; Fecha de entrega: 4 de diciembre del 2020
; Estudiante: Alejandro Castro Araya
; Carne: 2020034944
; Profesor: Kirstein Gatjens
;--------------------------------------------Manual de Usuario-------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Este programa es un painter de figuras geometricas. Se pueden seleccionar las diferentes figuras moviendo el cursor (el cursor es un pixel blanco, es pequeno pero se nota) hacia el boton de la figura deseada en la pantalla
; y presionando espacio. Luego de esto, mueva el cursor hacia donde quiera dibujar la figura y (dependiendo de las instrucciones dadas para cada figura en este manual) presione espacio para dibujar la figura. Ademas, puede
; tambien usar las teclas de F1-F12 para usar las diferentes herramientas del programa. Puede salirse del programa presionando la tecla ESC.  El cursor del painter se puede mover presionando solo las flechas 
; (esto lo mueve por 10 pixeles hacia la direccion seleccionada) o bien presionando CTRL + flecha, lo que mueve el cursor por 1 pixel hacia la direccion de la tecla. No recibe entradas de linea de comandos.
; NOTAS: 1. Si se usa el boton de cambiar color para cambiar colores, luego de presionar el boton ya se registra que se cambio de color, sin embargo ocupa luego poner el cursor en alguna zona fuera del boton de cambiar color
; para que se actualice el color
; 2. Los colores disponibles son verde (F11) y morado (F12)
; 3. Para el pentagono y hexagono, la linea que se debe hacer para que la figura se dibuje debe ser el segmento que termina en el punto izquierdo de lo que sera la base
; Las instrucciones para cada herramienta del programa y como usarlas son las siguientes:
;
; Punto: Se selecciona con el boton Punto o con la tecla F1. Presione espacio para pintar un pixel del color actual.
; Recta: Se selecciona con el boton Recta o con la tecla F2. Presione espacio para poner el punto 1 y espacio de nuevo para poner el punto 2.
; Triangulo Isosceles: Se selecciona con el boton Isosceles o con la tecla F3. Se debe marcar dos puntos, la esquina superior y la distancia a la base.
; Triangulo Equilatero: Se selecciona con el boton Equilatero o con la tecla F4. Se debe marcar dos puntos, esto representara los lados del triangulo.
; Triangulo Escaleno: Se selecciona el boton Escaleno o con la tecla F5. Se debe marcar tres puntos que representaran los lados del triangulo.
; Cuadrado: Se selecciona con el boton Cuadrado o con la tecla F6. Se deben marcar dos puntos que seran la base del cuadrado.
; Rectangulo: Se selecciona con el boton Rectangulo o con la tecla F7. Se deben marcar dos puntos que representen las esquinas contrarias del rectangulo.
; Pentagono: Se selecciona con el boton Pentagono o con la tecla F8. Se deben marcar dos puntos que seran un lado del pentagono.
; Hexagono: Se selecciona con el boton Hexagono o con la tecla F9. Se deben marcar dos puntos que seran un lado del hexagono.
; Poligono libre: Se selecciona con el boton Libre o con la tecla F10. Se van haciendo lineas entre los diferentes puntos que se seleccionan hasta que ya no se quiera continuar, usando la tecla Enter para terminar.
; Colores: Se selecciona con el boton Colores o con las teclas F11 y F12. Al seleccionarlo con la tecla espacio se alterna entre verde y morado. Al usar F11 se selecciona verde, y al usar F12 se selecciona morado.
; Salir: Se selecciona con el boton Salir o con la tecla ESC. Se usa para salirse del programa.
;--------------------------------------------Analisis de resultados-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
;+-----------------------------------------------------------------------------------------------------+------+--------------------------------------------------------------------------------------------------------------------------------+
;|                                            Parte                                                    | Nota | Explicacion Adicional                                                                                                          |
;+-----------------------------------------------------------------------------------------------------+------+--------------------------------------------------------------------------------------------------------------------------------+
;| Uso de modo grafico de 640x480x16 colores para realizar la tarea.                                   | A    | Funciona correctamente                                                                                                         |
;| Realizar la tarea como un archivo .COM.                              							   | A    | Funciona correctamente                                                                                                         |
;| Aparte de la barra de herramientas, el resto de la pantalla debe ser el area de trabajo.            | A    | Funciona correctamente                                                                                                         |
;| Las figuras dibujadas se quedan pintadas en el area de trabajo.                                     | A    | Funciona correctamente                                                                                                         |
;| Las figuras geometricas se pueden seleccionar mediante una barra de herramientas.                   | A    | Funciona correctamente                                                                                                         |
;| Se pueden seleccionar diferentes colores para las figuras.                                          | A    | Funciona correctamente                                                                                                         |
;| Cada herramienta debe tener una tecla de F1-F12 asignada.                                           | A    | Funciona correctamente                                                                                                         |
;| Opcion de saslir con tecla ESC y en la barra de herramientas.                                       | A    | Funciona correctamente                                                                                                         |
;| Implementacion de un cursor que se mueve con las flechas o con CTRL+flechas.                        | A    | Funciona correctamente   																									   |
;| Las flechas mueven el cursor por 10 pixeles y CTRL+flechas lo mueven por solo 1 pixel.              | A    | Funciona correctamente       																							       |
;| Implementacion de algoritmo de Bresenham para realizar las lineas de las figuras geometricas.       | A    | Funciona correctamente                                                                                                         |
;| Implementacion de todas las figuras geometricas solicitadas.                                        | A    | Funciona correctamente																										   |
;| Punto                                                   											   | A    | Funciona correctamente 																										   |
;| Recta                 											                                   | A    | Funciona correctamente                                                                                                         |
;| Isosceles                                             									           | A    | Funciona correctamente                                                                                                         |
;| Equilatero                                                   									   | A    | Funciona correctamente                                                                                                         |
;| Escaleno                                                      									   | A    | Funciona correctamente                                                                                                         |
;| Cuadrado                                                   										   | A    | Funciona correctamente                                                                                                         |
;| Rectangulo                                                  									       | A    | Funciona correctamente                                                                                                         |
;| Pentagono                                                  									       | A    | Funciona correctamente                                                                                                         |
;| Hexagono                                             								               | A    | Funciona correctamente                                                                                                         |
;| Poligono libre                                            							               | A    | Funciona correctamente                                                                                                         |
;| Cambiar colores                                              							           | A    | Funciona correctamente
;| Salir                                                   											   | A    | Funciona correctamente 
;| Documentación (Portada, manual de usuario y analisis de resultados con ABCD y comentarios).         | A    | Escrita correctamente                                                                                                          |
;+-----------------------------------------------------------------------------------------------------+------+--------------------------------------------------------------------------------------------------------------------------------+

unico segment

    assume  cs:unico, ds:unico, ss:unico

 org 100h	; Se hace un .COM

 N equ 4

start: jmp main

	TempW dw ?	; Se definen todas las variables necesarias para usar los puntos y las lineas
    pointX dw ? 
    pointY dw ?
    point1X dw ? 
    point1Y dw ?
    point2X dw ? 
    point2Y dw ?
    Color db ?
	
	columna db 3
	fila db 0
	disp db 0
	color2 db 0Ch
	veces dw 1
	
	barraX dw 0
	barraY dw 0
	
	guardar db 128 dup(?)
	colorguardar db ?
	
	x dw 300 ;cx
	y dw 100 ;dx
	pag db 0
	color3 db 7
	pixelguardar db ?
	
	pixelpunto db 7
	
	contador db 0
	escoger db 'x$'
	
	punto db 'Punto $'
	recta db 'Recta $'
	isosceles db 'Isosceles $'
	equilatero db 'Equilatero $'
	escaleno db 'Escaleno $'
	cuadrado db 'Cuadrado $'
	rectangulo db 'Rectangulo $'
	pentagono db 'Pentagono $'
	hexagono db 'Hexagono $'
	libre db 'Libre $'
	colores db 'Colores $'
	msgsalir db 'Salir $'
	
	punto1x dw ?
	punto1y dw ?
	punto2x dw ?
	punto2y dw ?
	contadorrecta db 2
	
	punto3x dw ?
	punto3y dw ?
	punto4x dw ?
	punto4y dw ?
	punto5x dw ?
	punto5y dw ?
	punto6x dw ?
	punto6y dw ?
	contadorisosceles db 4
	contadorequilatero db 2
	contadorescaleno db 3
	contadorcuadrado db 2
	contadorrectangulo db 2
	contadorpentagono db 2
	contadorhexagono db 2
	contadorlibre db 2
	diferencia dw 0
	diferencia2 dw 0
	puntomediox dw 0
	puntomedioy dw 0
	
	opcionescogida db 0
	colorescogido db 1

absolute Macro a
	local l1
	cmp a, 0
	jge l1
	neg a
l1:
Endm

 push_all MACRO	; este macro hace lo que seria un pusha en arquitectura 32 bit
   push ax
   push cx
   push dx
   push bx
   push bp
   push si
   push di
ENDM

pop_all MACRO	; este macro hace lo que seria un popa en arquitectura 32 bit
   pop di
   pop si
   pop bp
   pop bx
   pop dx
   pop cx
   pop ax
ENDM

; Proc de dibujar linea si delta Y es mayor que delta X
DrawLine2DDY Macro p1X, p1Y, p2X, p2Y
	local l1, lp, nxt
	mov dx, 1
	mov ax, [p1X]
	cmp ax, [p2X]
	jbe l1
	neg dx ; el delta se hace -1
l1:
	mov ax, [p2Y]
	shr ax, 1 ; dividir entre
	mov [TempW], ax
	mov ax, [p1X]
	mov [pointX], ax
	mov ax, [p1Y]
	mov [pointY], ax
	mov bx, [p2Y]
	sub bx, [p1Y]
	absolute bx
	mov cx, [p2X]
	sub cx, [p1X]
	absolute cx
	mov ax, [p2Y]
lp:
	push_all
	call PIXEL
	pop_all
	inc [pointY]
	cmp [TempW], 0
	jge nxt
	add [TempW], bx ; bx = (p2Y - p1Y) = deltay
	add [pointX], dx ; dx = delta
nxt:
	sub [TempW], cx ; cx = abs(p2X - p1X) = daltax
	cmp [pointY], ax ; ax = p2Y
	jne lp
	call PIXEL
ENDM

; Proc de dibujar linea si delta X es mayor que delta Y
DrawLine2DDX Macro p1X, p1Y, p2X, p2Y
	local l1, lp, nxt
	mov dx, 1
	mov ax, [p1Y]
	cmp ax, [p2Y]
	jbe l1
	neg dx ; delta se hace -1
l1:
	mov ax, [p2X]
	shr ax, 1 ; dividirlo entre 2
	mov [TempW], ax
	mov ax, [p1X]
	mov [pointX], ax
	mov ax, [p1Y]
	mov [pointY], ax
	mov bx, [p2X]
	sub bx, [p1X]
	absolute bx
	mov cx, [p2Y]
	sub cx, [p1Y]
	absolute cx
	mov ax, [p2X]
lp:
	push_all
	call PIXEL
	pop_all
	inc [pointX]
	cmp [TempW], 0
	jge nxt
	add [TempW], bx ; bx = abs(p2X - p1X) = deltax
	add [pointY], dx ; dx = delta
nxt:
	sub [TempW], cx ; cx = abs(p2Y - p1Y) = deltay
	cmp [pointX], ax ; ax = p2X
	jne lp
	call PIXEL
ENDM

Pause Macro N	; Se hace una pausa de N
local Cic1,Cic2
     push cx
     mov cx, N
cic1: push cx
     mov cx, N
cic2: nop
     loop cic2
     pop cx
     loop cic1
     pop cx
EndM

;Con esta proc se dibuja una linea en la pantalla con las coordenadas dadas como input del proc
DrawLine2D PROC
	mov cx, [point1X]
	sub cx, [point2X]
	absolute cx
	mov bx, [point1Y]
	sub bx, [point2Y]
	absolute bx
	cmp cx, bx
	jnae saltoConejo1 ; deltaX > deltaY
	jmp DrawLine2Dp1
saltoConejo1:
	mov ax, [point1X]
	mov bx, [point2X]
	mov cx, [point1Y]
	mov dx, [point2Y]
	cmp cx, dx
	jbe DrawLine2DpNxt1 ; point1Y <= point2Y
	xchg ax, bx
	xchg cx, dx
DrawLine2DpNxt1:
	mov [point1X], ax
	mov [point2X], bx
	mov [point1Y], cx
	mov [point2Y], dx
	DrawLine2DDY point1X, point1Y, point2X, point2Y
	ret
DrawLine2Dp1:
	mov ax, [point1X]
	mov bx, [point2X]
	mov cx, [point1Y]
	mov dx, [point2Y]
	cmp ax, bx
	jbe DrawLine2DpNxt2 ; point1X <= point2X
	xchg ax, bx
	xchg cx, dx
DrawLine2DpNxt2:
	mov [point1X], ax
	mov [point2X], bx
	mov [point1Y], cx
	mov [point2Y], dx
	DrawLine2DDX point1X, point1Y, point2X, point2Y
	ret
DrawLine2D ENDP

; Con esta proc se pone un pixel en la pantalla que es como decir un punto
PIXEL PROC 
	mov bh,0h
	mov cx,[pointX]
	mov dx,[pointY]
	mov al,[Color]
	mov ah,0Ch
	int 10h
	ret
PIXEL ENDP

dibujarBarra1 Proc	; Con estas procs se dibuja la barra de herramientas en la pantalla
posicionInicial:
	mov barraX,80	
	mov barraY,500	; Se define el cuadro de la seccion de la barra de herramientas que se va a dibujar
cicloBarra:
	cmp barraY,0	; Al llegar a 0 pues ya se dibujo el cuadro
	je cicloPunto1
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra
cicloPunto1:
	mov di,0
	mov columna,0
cicloPunto2:
	cmp [punto+di],' '	; Se escribe el nombre del boton del cuadro de la barra de herramientas
	je terminarCuadro

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [punto+di]
	mov  bl, 6  
	mov  bh, disp    
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto2
terminarCuadro:
	mov barraX,80
	mov barraY,35
cicloCuadro1:
	cmp barraX,0
	je salirBarra
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro1
salirBarra:
	ret
dibujarBarra1 endp

dibujarBarra2 Proc	; Todas las procs de dibujar la barra de herramientas son igual que la anterior pero aplicadas para los diferentes botones de la barra de herramientas
posicionInicial2:
	mov barraX,80
	mov barraY,65
cicloBarra2:
	cmp barraY,35
	je cicloPunto12
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra2
cicloPunto12:
	mov di,0
	mov columna,0
	mov fila,3
cicloPunto22:
	cmp [recta+di],' '
	je terminarCuadro2

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [recta+di]
	mov  bl, 6  
	mov  bh, disp    ; la pagina de display
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto22
terminarCuadro2:
	mov barraX,80
	mov barraY,75
cicloCuadro12:
	cmp barraX,0
	je salirBarra2
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro12
salirBarra2:
	ret
dibujarBarra2 endp

dibujarBarra3 Proc
posicionInicial3:
	mov barraX,80
	mov barraY,65
cicloBarra3:
	cmp barraY,35
	je cicloPunto13
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra3
cicloPunto13:
	mov di,0
	mov columna,0
	mov fila,5
cicloPunto23:
	cmp [isosceles+di],' '
	je terminarCuadro3

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [isosceles+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto23
terminarCuadro3:
	mov barraX,80
	mov barraY,115
cicloCuadro13:
	cmp barraX,0
	je salirBarra3
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro13
salirBarra3:
	ret
dibujarBarra3 endp

dibujarBarra4 Proc
posicionInicial4:
	mov barraX,80
	mov barraY,65
cicloBarra4:
	cmp barraY,35
	je cicloPunto14
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra4
cicloPunto14:
	mov di,0
	mov columna,0
	mov fila,8
cicloPunto24:
	cmp [equilatero+di],' '
	je terminarCuadro4

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [equilatero+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto24
terminarCuadro4:
	mov barraX,80
	mov barraY,155
cicloCuadro14:
	cmp barraX,0
	je salirBarra4
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro14
salirBarra4:
	ret
dibujarBarra4 endp

dibujarBarra5 Proc
posicionInicial5:
	mov barraX,80
	mov barraY,65
cicloBarra5:
	cmp barraY,35
	je cicloPunto15
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra5
cicloPunto15:
	mov di,0
	mov columna,0
	mov fila,11
cicloPunto25:
	cmp [escaleno+di],' '
	je terminarCuadro5

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [escaleno+di]
	mov  bl, 6 ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto25
terminarCuadro5:
	mov barraX,80
	mov barraY,195
cicloCuadro15:
	cmp barraX,0
	je salirBarra5
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro15
salirBarra5:
	ret
dibujarBarra5 endp

dibujarBarra6 Proc
posicionInicial6:
	mov barraX,80
	mov barraY,65
cicloBarra6:
	cmp barraY,35
	je cicloPunto16
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra6
cicloPunto16:
	mov di,0
	mov columna,0
	mov fila,13
cicloPunto26:
	cmp [cuadrado+di],' '
	je terminarCuadro6

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [cuadrado+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto26
terminarCuadro6:
	mov barraX,80
	mov barraY,235
cicloCuadro16:
	cmp barraX,0
	je salirBarra6
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro16
salirBarra6:
	ret
dibujarBarra6 endp

dibujarBarra7 Proc
posicionInicial7:
	mov barraX,80
	mov barraY,65
cicloBarra7:
	cmp barraY,35
	je cicloPunto17
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra7
cicloPunto17:
	mov di,0
	mov columna,0
	mov fila,15
cicloPunto27:
	cmp [rectangulo+di],' '
	je terminarCuadro7

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [rectangulo+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto27
terminarCuadro7:
	mov barraX,80
	mov barraY,275
cicloCuadro17:
	cmp barraX,0
	je salirBarra7
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro17
salirBarra7:
	ret
dibujarBarra7 endp

dibujarBarra8 Proc
posicionInicial8:
	mov barraX,80
	mov barraY,65
cicloBarra8:
	cmp barraY,35
	je cicloPunto18
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra8
cicloPunto18:
	mov di,0
	mov columna,0
	mov fila,18
cicloPunto28:
	cmp [pentagono+di],' '
	je terminarCuadro8

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [pentagono+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto28
terminarCuadro8:
	mov barraX,80
	mov barraY,315
cicloCuadro18:
	cmp barraX,0
	je salirBarra8
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro18
salirBarra8:
	ret
dibujarBarra8 endp

dibujarBarra9 Proc
posicionInicial9:
	mov barraX,80
	mov barraY,65
cicloBarra9:
	cmp barraY,35
	je cicloPunto19
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra9
cicloPunto19:
	mov di,0
	mov columna,0
	mov fila,20
cicloPunto29:
	cmp [hexagono+di],' '
	je terminarCuadro9

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [hexagono+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto29
terminarCuadro9:
	mov barraX,80
	mov barraY,355
cicloCuadro19:
	cmp barraX,0
	je salirBarra9
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro19
salirBarra9:
	ret
dibujarBarra9 endp

dibujarBarra10 Proc
posicionInicial10:
	mov barraX,80
	mov barraY,65
cicloBarra10:
	cmp barraY,35
	je cicloPunto110
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra10
cicloPunto110:
	mov di,0
	mov columna,0
	mov fila,23
cicloPunto210:
	cmp [libre+di],' '
	je terminarCuadro10

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [libre+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto210
terminarCuadro10:
	mov barraX,80
	mov barraY,395
cicloCuadro110:
	cmp barraX,0
	je salirBarra10
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro110
salirBarra10:
	ret
dibujarBarra10 endp

dibujarBarra11 Proc
posicionInicial11:
	mov barraX,80
	mov barraY,65
cicloBarra11:
	cmp barraY,35
	je cicloPunto111
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra11
cicloPunto111:
	mov di,0
	mov columna,0
	mov fila,25
cicloPunto211:
	cmp [colores+di],' '
	je terminarCuadro11

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [colores+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto211
terminarCuadro11:
	mov barraX,80
	mov barraY,445
cicloCuadro111:
	cmp barraX,0
	je salirBarra11
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro111
salirBarra11:
	ret
dibujarBarra11 endp

dibujarBarra12 Proc
posicionInicial12:
	mov barraX,80
	mov barraY,65
cicloBarra12:
	cmp barraY,35
	je cicloPunto112
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraY
	jmp cicloBarra12
cicloPunto112:
	mov di,0
	mov columna,0
	mov fila,28
cicloPunto212:
	cmp [msgsalir+di],' '
	je terminarCuadro12

	mov dl,columna
	mov dh,fila
	mov bh,disp
	mov ah,02h
	int 10h

	mov  al, byte ptr [msgsalir+di]
	mov  bl, 6  ;Color is red
	mov  bh, disp    ;Display page
	mov  ah, 0Eh  ;Teletype
	int  10h
	
	inc di
	inc columna
	
	jmp cicloPunto212
terminarCuadro12:
	mov barraX,80
	mov barraY,485
cicloCuadro112:
	cmp barraX,0
	je salirBarra12
	
	mov cx,barraX
	mov dx,barraY
	mov bh,pag
	mov al,7
	mov ah,0Ch
	int 10h
	
	dec barraX
	jmp cicloCuadro112
salirBarra12:
	ret
dibujarBarra12 endp	; Con este proc se termina de dibujar la barra de herramientas

main:
	mov ax, 12h
	int 10h ; se pone modo grafico 640x480x16 colores

inicio:
	call dibujarBarra1
	call dibujarBarra2
	call dibujarBarra3
	call dibujarBarra4
	call dibujarBarra5
	call dibujarBarra6
	call dibujarBarra7
	call dibujarBarra8
	call dibujarBarra9
	call dibujarBarra10
	call dibujarBarra11
	call dibujarBarra12
	
	mov cx,x	; Se pone el x del pixel que se va a leer
	mov dx,y	; Se pone el y del pixel que se va a leer
	mov bh,pag	; Se pone la pagina 0 de display
	mov ah,0Dh	; Se va a leer el pixel
	int 10h
	mov pixelguardar,al	; Se guarda el color del pixel leido

inicio2:	
	mov cx,x	; Se pone la x del pixel que se va a escribir
	mov dx,y	; Se pone la y del pixel que se va a escribir
	mov bh,pag	; La pagina es 0
	mov al,color3	; Se pone el color del pixel que se desea
	mov ah,0Ch		; Se va a escribir el pixel
	int 10h

	mov ah,10h	; Se pide una tecla como input
    int 16h
	
	cmp al,0Dh	; Si se presiono enter entonces se detiene el modo poligono libre
	jne seguirInicio2
	cmp opcionescogida,11
	jne seguirInicio2
	mov opcionescogida,0
	jmp inicio2
seguirInicio2:
	cmp al,32	; Si se presiono space se revisa que se hizo
	je saltoSpacePresionado
	
	cmp ah,59	; Se revisa si se presiono alguna de las teclas F1-F12
	je f1Presionado
	cmp ah,60
	je f2Presionado
	cmp ah,61
	je f3Presionado
	cmp ah,62
	je f4Presionado
	cmp ah,63
	je f5Presionado
	cmp ah,64
	je f6Presionado
	cmp ah,65
	je f7Presionado
	cmp ah,66
	je f8Presionado
	cmp ah,67
	je f9Presionado
	cmp ah,68
	je f10Presionado
	cmp ah,85h
	je f11Presionado
	cmp ah,86h
	je f12Presionado
	
	cmp al, 27  ; ESC se sale del programa
    jne saltoPreguntar1
	jmp salir
saltoSpacePresionado:
	jmp spacePresionado	; Todos estos son diferentes saltos que ponen la flag de opcionescogida dependiendo de la tecla presionada
f1Presionado:
	mov opcionescogida,1
	jmp inicio2
f2Presionado:
	mov opcionescogida,2
	jmp inicio2
f3Presionado:
	mov opcionescogida,3
	jmp inicio2
f4Presionado:
	mov opcionescogida,4
	jmp inicio2
f5Presionado:
	mov opcionescogida,5
	jmp inicio2
f6Presionado:
	mov opcionescogida,6
	jmp inicio2
f7Presionado:
	mov opcionescogida,7
	jmp inicio2
f8Presionado:
	mov opcionescogida,8
	jmp inicio2
f9Presionado:
	mov opcionescogida,9
	jmp inicio2
f10Presionado:
	mov opcionescogida,10
	jmp inicio2
f11Presionado:
	mov color3,2
	jmp inicio2
f12Presionado:
	mov color3,5
	jmp inicio2
saltoPreguntar1:
	jmp preguntar1
spacePresionado:
	cmp y,450
	jl seguirSpacePresionado	; Si se presiono el boton de salir, pues se sale, si no se sigue revisando con saltos de conejo
	cmp x,80
	jg seguirSpacePresionado
	jmp salir
seguirSpacePresionado:
	cmp y,35	; Revisa si presiono boton de punto
	jg seguirRevisar1
	cmp x,80
	jg seguirRevisar1
	mov opcionescogida,1
	jmp inicio2
seguirRevisar1:
	cmp y,75	; Revisa si presiono boton de recta
	jg seguirRevisar2
	cmp x,80
	jg seguirRevisar2
	mov opcionescogida,2
	jmp inicio2
seguirRevisar2:
	cmp y,115	; Revisa si presiono boton de triangulo isosceles
	jg seguirRevisar3
	cmp x,80
	jg seguirRevisar3
	mov opcionescogida,3
	jmp inicio2
seguirRevisar3:
	cmp y,155	; Revisa si presiono boton de triangulo equilatero
	jg seguirRevisar4
	cmp x,80
	jg seguirRevisar4
	mov opcionescogida,4
	jmp inicio2
seguirRevisar4:
	cmp y,195	; Revisa si presiono boton de triangulo escaleno
	jg seguirRevisar5
	cmp x,80
	jg seguirRevisar5
	mov opcionescogida,5
	jmp inicio2
seguirRevisar5:
	cmp y,235	; Revisa si presiono boton de cuadrado
	jg seguirRevisar6
	cmp x,80
	jg seguirRevisar6
	mov opcionescogida,6
	jmp inicio2
seguirRevisar6:
	cmp y,275	; Revisa si presiono boton de rectangulo
	jg seguirRevisar7
	cmp x,80
	jg seguirRevisar7
	mov opcionescogida,7
	jmp inicio2
seguirRevisar7:
	cmp y,315	; Revisa si presiono boton de pentagono
	jg seguirRevisar8
	cmp x,80
	jg seguirRevisar8
	mov opcionescogida,8
	jmp inicio2
seguirRevisar8:
	cmp y,355	; Revisa si presiono boton de hexagono
	jg seguirRevisar9
	cmp x,80
	jg seguirRevisar9
	mov opcionescogida,9
	jmp inicio2
seguirRevisar9:
	cmp y,395	; Revisa si presiono boton de poligono libre
	jg seguirRevisar10
	cmp x,80
	jg seguirRevisar10
	mov opcionescogida,10
	jmp inicio2
seguirRevisar10:
	cmp y,445	; Revisa si presiono boton de cambiar de color
	jg seguirRevisar11
	cmp x,80
	jg seguirRevisar11
	mov opcionescogida,12
	jmp inicio2
seguirRevisar11:	; Hace diferentes saltos de conejo dependiendo de cual opcion se escogio y luego hace la figura deseada
	cmp opcionescogida,1
	je saltoDibujarPunto
	cmp opcionescogida,2
	je saltoDibujarRecta
	cmp opcionescogida,3
	je saltoDibujarIsosceles1
	cmp opcionescogida,4
	je saltoDibujarEquilatero1
	cmp opcionescogida,5
	je saltoDibujarEscaleno1
	cmp opcionescogida,6
	je saltoDibujarCuadrado1
	cmp opcionescogida,7
	je saltoDibujarRectangulo1
	cmp opcionescogida,8
	je saltoDibujarPentagono1
	cmp opcionescogida,9
	je saltoDibujarHexagono1
	cmp opcionescogida,10
	je saltoDibujarLibre
	cmp opcionescogida,11
	je saltoDibujarLibre2
	cmp opcionescogida,12
	je saltoCambiarColor

	cmp y,450	; Si se escogio el boton de salir pues se sale
	jl botonPunto
	cmp x,80
	jg botonPunto
	jmp salir
saltoDibujarPunto:	; Hace diferentes saltos de conejo dependiendo de la eleccion
	jmp dibujarPunto
saltoDibujarRecta:
	jmp dibujarRecta
saltoDibujarIsosceles1:
	jmp dibujarIsosceles1
saltoDibujarEquilatero1:
	jmp dibujarEquilatero1
saltoDibujarEscaleno1:
	jmp dibujarEscaleno1
saltoDibujarCuadrado1:
	jmp dibujarCuadrado1
saltoDibujarRectangulo1:
	jmp dibujarRectangulo1
saltoDibujarPentagono1:
	jmp dibujarPentagono1
saltoDibujarHexagono1:
	jmp dibujarHexagono1
saltoDibujarLibre:
	jmp dibujarLibre
saltoDibujarLibre2:
	jmp dibujarLibre3
saltoCambiarColor:
	jmp dibujarColor
botonPunto:
	cmp y,35	; Si se eligio boton de punto la opcion es 1
	jg botonRecta
	cmp x,80
	jg botonRecta
	mov opcionescogida,1
	
	jmp inicio2
dibujarPunto:
	cmp opcionescogida,1	; Se dibuja un pixel en la pantalla que es el punto
	jne saltoInicio
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio
saltoInicio:
	jmp inicio2
botonRecta:
	cmp y,75	; Si se eligio el boton de recta la opcion es 2
	jg saltoIsosceles
	cmp x,80
	jg saltoIsosceles
	mov opcionescogida,2
	jmp inicio2
saltoIsosceles:
	jmp botonIsosceles
dibujarRecta:	; Se dibuja una recta en la pantalla
	cmp opcionescogida,2
	jne saltoInicio2
	mov cx,x	; Para dibujar la recta lo que se hace es que se guarda el primer punto con un contador y luego el segundo punto es la x y la y que estan cuando se presiona espacio por segunda vez
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorrecta
	cmp contadorrecta,1
	je guardarRecta
	jmp seguirRecta
guardarRecta:
	mov ax,x	; Se guarda el punto 1
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax
seguirRecta:
	cmp contadorrecta,0
	je dibujarRecta2
	
	jmp inicio
dibujarRecta2:
	mov al,color3	; Se dibuja la recta usando el proc drawline2d
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,y
	mov [point2Y], ax
	call DrawLine2D
	mov contadorrecta,2
	jmp inicio
botonIsosceles:	; Si se eligio el triangulo isosceles la opcion es 3
	cmp y,115
	jg saltoBotonEquilatero
	cmp x,80
	jg saltoBotonEquilatero
	mov opcionescogida,3
	jmp inicio2
saltoBotonEquilatero:
	jmp botonEquilatero
saltoInicio2:
	jmp inicio2
dibujarIsosceles1:
	cmp opcionescogida,3	; Se dibuja el isosceles usando el mismo procedimiento que con la recta
	jne saltoInicio2
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorisosceles
	cmp contadorisosceles,3
	je guardarIsosceles1
	
	cmp contadorisosceles,2
	je guardarIsosceles2
	
	cmp contadorisosceles,1
	je guardarIsosceles3
	
	
	cmp contadorisosceles,0
	je guardarIsosceles4
	
	jmp dibujarIsosceles2
guardarIsosceles1:
	mov ax,x
	mov punto1x,ax	; Se guardan los puntos necesarios para el isosceles
	mov ax,y
	mov punto1y,ax
	jmp inicio
guardarIsosceles2:
	mov ax,x
	mov punto2x,ax
	mov ax,y
	mov punto2y,ax
	jmp inicio
guardarIsosceles3:
	mov ax,x
	mov punto3x,ax
	mov ax,y
	mov punto3y,ax
	jmp inicio
guardarIsosceles4:
	mov ax,x
	mov punto4x,ax
	mov ax,y
	mov punto4y,ax
dibujarIsosceles2:
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto2x
	mov [point2X], ax	; Se usa el proc drawline2d para dibujar el isosceles
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto2y
	mov [point2Y], ax
	call DrawLine2D
	
	
	
	mov al,color3
	mov [Color], al
	mov ax,punto2x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto2y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto3x
	mov [point1X], ax
	mov ax,punto4x
	mov [point2X], ax
	mov ax,punto3y
	mov [point1Y], ax
	mov ax,punto4y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov contadorisosceles,4
	jmp inicio
botonEquilatero:
	cmp y,155	; Si se eligio el boton de triangulo equilatero la opcion es 4
	jg saltoBotonEscaleno
	cmp x,80
	jg saltoBotonEscaleno
	mov opcionescogida,4
	jmp inicio2
saltoInicio3:
	jmp inicio2
saltoBotonEscaleno:
	jmp botonEscaleno
dibujarEquilatero1:
	cmp opcionescogida,4	; Se dibuja el equilatero
	jne saltoInicio3
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorequilatero
	cmp contadorequilatero,1
	je guardarEquilatero1
	
	cmp contadorequilatero,0
	je guardarEquilatero2
	
	jmp dibujarEquilatero2
guardarEquilatero1:
	mov ax,x
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax
	jmp inicio
guardarEquilatero2:	; Se hace lo mismo que en las pasadas figuras
	mov ax,x
	mov punto2x,ax
	mov ax,y
	mov punto2y,ax
dibujarEquilatero2:
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto2x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto2y
	mov [point2Y], ax
	call DrawLine2D
	
	mov ax,punto2x
	sub ax,punto1x
	mov diferencia,ax
	
	mov ax,punto1x
	add ax,punto2x
	shr ax,1
	mov punto3x,ax
	
	mov ax,punto1y
	add ax,punto2y
	shr ax,1
	mov punto3y,ax
	
	mov ax,diferencia
	sub punto3y,ax
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto2x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto2y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov contadorequilatero,2
	jmp inicio
saltoInicio4:
	jmp inicio2
botonEscaleno:
	cmp y,195	; Si se escogio el escaleno la opcion es 5
	jg saltoBotonCuadrado
	cmp x,80
	jg saltoBotonCuadrado
	mov opcionescogida,5
	jmp inicio2
saltoBotonCuadrado:
	jmp botonCuadrado
dibujarEscaleno1:
	cmp opcionescogida,5
	jne saltoInicio4
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorescaleno
	cmp contadorescaleno,2
	je guardarEscaleno1
	
	cmp contadorescaleno,1
	je guardarEscaleno2
	
	cmp contadorescaleno,0
	je guardarEscaleno3
	
	jmp dibujarEscaleno2
guardarEscaleno1:
	mov ax,x
	mov punto1x,ax	;	Se guardan los puntos
	mov ax,y
	mov punto1y,ax
	jmp inicio
guardarEscaleno2:
	mov ax,x
	mov punto2x,ax
	mov ax,y
	mov punto2y,ax
	jmp inicio
guardarEscaleno3:
	mov ax,x
	mov punto3x,ax
	mov ax,y
	mov punto3y,ax
dibujarEscaleno2:
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax	; Se dibuja el triangulo escaleno con drawline2d
	mov ax,punto2x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto2y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto2x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto2y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov contadorescaleno,3
	jmp inicio
saltoInicio5:
	jmp inicio2
botonCuadrado:
	cmp y,235
	jg saltoBotonRectangulo
	cmp x,80	; Si se escogio el cuadrado la opcion es 6
	jg saltoBotonRectangulo
	mov opcionescogida,6
	jmp inicio2
saltoBotonRectangulo:
	jmp botonRectangulo
dibujarCuadrado1:
	cmp opcionescogida,6
	jne saltoInicio5
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorcuadrado
	cmp contadorcuadrado,1
	je guardarCuadrado1
	
	cmp contadorcuadrado,0
	je guardarCuadrado2

	jmp dibujarCuadrado2
guardarCuadrado1:
	mov ax,x
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax
	jmp inicio
guardarCuadrado2:
	mov ax,x
	mov punto2x,ax
	mov ax,y
	mov punto2y,ax
dibujarCuadrado2:	; Se dibujan los lados del cuadrado
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto2x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto2y
	mov [point2Y], ax
	call DrawLine2D
	
	mov ax,punto2x
	sub ax,punto1x
	mov diferencia,ax
	
	mov ax,punto2y
	mov punto3y,ax
	mov ax,diferencia
	sub punto3y,ax
	
	mov ax,punto2x
	mov punto3x,ax
	
	mov ax,punto1y
	mov punto4y,ax
	mov ax,diferencia
	sub punto4y,ax
	
	mov ax,punto1x
	mov punto4x,ax
	
	mov al,color3
	mov [Color], al
	mov ax,punto2x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto2y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto4x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto4y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto3x
	mov [point1X], ax
	mov ax,punto4x
	mov [point2X], ax
	mov ax,punto3y
	mov [point1Y], ax
	mov ax,punto4y
	mov [point2Y], ax
	call DrawLine2D
	
	mov contadorcuadrado,2
	jmp inicio
saltoInicio6:
	jmp inicio2
botonRectangulo:
	cmp y,275
	jg saltoBotonPentagono	; Si se eligio el rectangulo la opcion es 7
	cmp x,80
	jg saltoBotonPentagono
	mov opcionescogida,7
	jmp inicio2
saltoBotonPentagono:
	jmp botonPentagono
dibujarRectangulo1:
	cmp opcionescogida,7
	jne saltoInicio6
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorrectangulo
	cmp contadorrectangulo,1
	je guardarRectangulo1
	
	cmp contadorrectangulo,0
	je guardarRectangulo2

	jmp dibujarRectangulo2
guardarRectangulo1:
	mov ax,x	; Se guardan los puntos opuestos del rectangulo que se dieron
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax
	jmp inicio	 ; Se dibujan los lados del rectangulo
guardarRectangulo2:
	mov ax,x
	mov punto3x,ax
	mov ax,y
	mov punto3y,ax
dibujarRectangulo2:
	mov ax,punto1x
	mov punto4x,ax
	mov ax,punto3y
	mov punto4y,ax
	
	mov ax,punto3x
	mov punto2x,ax
	mov ax,punto1y
	mov punto2y,ax
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto2x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto2y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto2x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto2y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto4x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto4y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto3x
	mov [point1X], ax
	mov ax,punto4x
	mov [point2X], ax
	mov ax,punto3y
	mov [point1Y], ax
	mov ax,punto4y
	mov [point2Y], ax
	call DrawLine2D
	
	mov contadorrectangulo,2
	jmp inicio
saltoInicio7:
	jmp inicio2
botonPentagono:
	cmp y,315
	jg saltoBotonHexagono	; Si se eligio el pentagono la opcion es 8
	cmp x,80
	jg saltoBotonHexagono
	mov opcionescogida,8
	jmp inicio2
saltoBotonHexagono:
	jmp botonHexagono
dibujarPentagono1:
	cmp opcionescogida,8
	jne saltoInicio7
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorpentagono
	cmp contadorpentagono,1
	je guardarPentagono1
	
	cmp contadorpentagono,0
	je guardarPentagono2

	jmp dibujarPentagono2
guardarPentagono1:
	mov ax,x
	mov punto1x,ax		; Se guardan ambos puntos del pentagono que son un lado
	mov ax,y
	mov punto1y,ax
	jmp inicio
guardarPentagono2:
	mov ax,x
	mov punto2x,ax
	mov ax,y
	mov punto2y,ax
dibujarPentagono2:
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto2x
	mov [point2X], ax	; Se dibujan sus 5 lados
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto2y
	mov [point2Y], ax
	call DrawLine2D
	
	mov ax,punto2x
	sub ax,punto1x
	mov diferencia,ax
	
	mov ax,punto1x
	add ax,punto2x
	shr ax,1
	mov punto5x,ax
	
	mov ax,punto1y
	add ax,punto2y
	shr ax,1
	mov punto5y,ax
	
	mov ax,diferencia
	sub punto5y,ax
	
	mov ax,punto2y
	mov punto3y,ax
	mov ax,punto2x
	add ax,diferencia
	mov punto3x,ax
	
	mov ax,punto2x
	sub ax,punto1x
	mov diferencia2,ax
	mov ax,punto1y
	mov punto4y,ax
	mov ax,punto3x
	add ax,diferencia2
	mov punto4x,ax
	
	mov ax,punto3x ; punto medio entre punto 2 y punto 3
	sub ax,punto2x
	mov diferencia,ax
	
	mov ax,punto2x
	add ax,punto3x
	shr ax,1
	mov punto5x,ax
	
	mov ax,punto2y
	add ax,punto3y
	shr ax,1
	mov punto5y,ax
	
	mov ax,diferencia
	sub punto5y,ax
	sub punto5y,ax
	
	mov al,color3
	mov [Color], al
	mov ax,punto2x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto2y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto3x
	mov [point1X], ax
	mov ax,punto4x
	mov [point2X], ax
	mov ax,punto3y
	mov [point1Y], ax
	mov ax,punto4y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto4x
	mov [point1X], ax
	mov ax,punto5x
	mov [point2X], ax
	mov ax,punto4y
	mov [point1Y], ax
	mov ax,punto5y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto5x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto5y
	mov [point2Y], ax
	call DrawLine2D
	
	mov contadorpentagono,2
	jmp inicio
saltoInicio8:
	jmp inicio2
botonHexagono:
	cmp y,355
	jg saltoBotonLibre
	cmp x,80			; Si se escogio hexagono la opcion es 9
	jg saltoBotonLibre
	mov opcionescogida,9
	jmp inicio2
saltoBotonLibre:
	jmp botonLibre
dibujarHexagono1:
	cmp opcionescogida,9
	jne saltoInicio8
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorhexagono
	cmp contadorhexagono,1
	je guardarHexagono1
	
	cmp contadorhexagono,0
	je guardarHexagono2

	jmp dibujarHexagono2
guardarHexagono1:
	mov ax,x
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax	; Se guardan ambos puntos
	jmp inicio
guardarHexagono2:
	mov ax,x
	mov punto2x,ax
	mov ax,y
	mov punto2y,ax
dibujarHexagono2:
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto2x		; Se dibujan los 6 lados del hexagono
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto2y
	mov [point2Y], ax
	call DrawLine2D
	
	mov ax,punto2x
	sub ax,punto1x
	mov diferencia,ax
	
	mov ax,punto1x
	add ax,punto2x
	shr ax,1
	mov punto5x,ax
	
	mov ax,punto1y
	add ax,punto2y
	shr ax,1
	mov punto5y,ax
	
	mov ax,diferencia
	sub punto5y,ax
	
	mov ax,punto2y
	mov punto3y,ax
	mov ax,punto2x
	add ax,diferencia
	mov punto3x,ax
	
	mov ax,punto2x
	sub ax,punto1x
	mov diferencia2,ax
	mov ax,punto1y
	mov punto4y,ax
	mov ax,punto3x
	add ax,diferencia2
	mov punto4x,ax
	
	mov ax,punto3x ; punto medio entre punto 2 y punto 3
	sub ax,punto2x
	mov diferencia,ax
	
	mov ax,punto2x
	add ax,punto3x
	shr ax,1
	mov punto5x,ax
	
	mov ax,punto2y
	add ax,punto3y
	shr ax,1
	mov punto5y,ax
	
	mov ax,diferencia
	sub punto5y,ax
	sub punto5y,ax
	
	mov al,color3
	mov [Color], al
	mov ax,punto2x
	mov [point1X], ax
	mov ax,punto3x
	mov [point2X], ax
	mov ax,punto2y
	mov [point1Y], ax
	mov ax,punto3y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto3x
	mov [point1X], ax
	mov ax,punto4x
	mov [point2X], ax
	mov ax,punto3y
	mov [point1Y], ax
	mov ax,punto4y
	mov [point2Y], ax
	call DrawLine2D
	
	mov ax,punto3x
	mov punto5x,ax
	
	mov ax,punto2x
	mov punto6x,ax
	mov ax,punto5y
	mov punto6y,ax
	
	mov al,color3
	mov [Color], al
	mov ax,punto4x
	mov [point1X], ax
	mov ax,punto5x
	mov [point2X], ax
	mov ax,punto4y
	mov [point1Y], ax
	mov ax,punto5y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto5x
	mov [point1X], ax
	mov ax,punto6x
	mov [point2X], ax
	mov ax,punto5y
	mov [point1Y], ax
	mov ax,punto6y
	mov [point2Y], ax
	call DrawLine2D
	
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,punto6x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,punto6y
	mov [point2Y], ax
	call DrawLine2D
	
	mov contadorhexagono,2
	jmp inicio
saltoInicio9:
	jmp inicio2
botonLibre:
	cmp y,395
	jg saltoCambiarColor2
	cmp x,80
	jg saltoCambiarColor2	; Si se eligio el poligono libre la opcion es 10
	mov opcionescogida,10
	jmp inicio2
saltoCambiarColor2:
	jmp dibujarColor
dibujarLibre:
	cmp opcionescogida,10
	jne saltoInicio9
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorlibre
	cmp contadorlibre,1
	je guardarLibre
	jmp seguirLibre
guardarLibre:
	mov ax,x
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax
seguirLibre:
	cmp contadorlibre,0
	je dibujarLibre2
	
	jmp inicio
dibujarLibre2:
	mov al,color3
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,x				; Se dibuja un lado del poligono libre cada vez que se presiona espacio hasta que el usuario presione enter
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,y
	mov [point2Y], ax
	call DrawLine2D
	
	mov ax,x
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax
	
	mov contadorlibre,1
	mov opcionescogida,11
	jmp inicio
saltoInicio10:
	jmp inicio2
dibujarLibre3:
	cmp opcionescogida,11
	jne saltoInicio10
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	dec contadorlibre
guardarLibre3:
	mov ax,x
	mov punto2x,ax
	mov ax,y		; Se guarda el punto 2
	mov punto2y,ax
dibujarLibre4:
	mov al,color3	
	mov [Color], al
	mov ax,punto1x
	mov [point1X], ax
	mov ax,x
	mov [point2X], ax
	mov ax,punto1y
	mov [point1Y], ax
	mov ax,y			; Se dibuja el poligono libre hasta que se presione enter
	mov [point2Y], ax
	call DrawLine2D
	
	mov ax,x
	mov punto1x,ax
	mov ax,y
	mov punto1y,ax
	mov contadorlibre,1
	mov opcionescogida,11
	jmp inicio

saltoInicio11:
	jmp inicio2
botonColor:
	cmp y,445
	jg saltoInicio10
	cmp x,80
	jg saltoInicio10		; Si se eligio el boton de cambiar color la opcion es 12
	mov opcionescogida,12
	mov color3,5
	jmp inicio2
dibujarColor:
	cmp opcionescogida,12
	jne saltoInicio11
	dec colorescogido		; Se hace una especie de ciclo en donde cada vez que el usuario presiona espacio o la tecla F11 o F12 se cambia de color a verde o morado
	
	cmp colorescogido,1
	jne dibujarColor2
	mov color3,5
	mov opcionescogida,12
	jmp inicio2
dibujarColor2:
	cmp colorescogido,0
	jne dibujarColor
	mov color3,2
	mov opcionescogida,12
	mov colorescogido,2
	jmp inicio2
preguntar1:
	cmp ah,77				; Se hacen varios saltos de conejo para mover el cursor dependiendo de si se presiono una flecha o ctrl+una flecha
	jne preguntar2
	jmp flechaDerecha
preguntar2:
	cmp ah,75
	jne preguntar3
	jmp flechaIzquierda
preguntar3:
	cmp ah,72
	jne preguntar4
	jmp flechaArriba
preguntar4:
	cmp ah,80
	jne preguntar1Ctrl
	jmp flechaAbajo
preguntar1Ctrl:
	cmp ah,74h
	jne preguntar2Ctrl
	jmp flechaDerechaCtrl
preguntar2Ctrl:
	cmp ah,73h
	jne preguntar3Ctrl
	jmp flechaIzquierdaCtrl
preguntar3Ctrl:
	cmp ah,8Dh
	jne preguntar4Ctrl
	jmp flechaArribaCtrl
preguntar4Ctrl:
	cmp ah,91h
	jne saltoVolver
	jmp flechaAbajoCtrl
saltoSalir:
	jmp salir
saltoVolver:
	jmp inicio2
flechaDerecha:		; Si se presiono solo una flecha se mueve 10 pixeles hacia esa direccion
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag   
	mov  ah, 0Ch  ;Teletype
	int  10h

	add x,10
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
flechaIzquierda:
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag
	mov  ah, 0Ch  ;Teletype
	int  10h

	sub x,10
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
flechaArriba:
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag 
	mov  ah, 0Ch  ;Teletype
	int  10h

	sub y,10
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
flechaAbajo:
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag   
	mov  ah, 0Ch  ;Teletype
	int  10h

	add y,10
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
flechaDerechaCtrl:			; Si se presiono CTRL+una flecha se mueve solo 1 pixel hacia esa direccion (esto se revisa con el scancode de CTRL+flecha)
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag    
	mov  ah, 0Ch  ;Teletype
	int  10h

	add x,1
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
flechaIzquierdaCtrl:
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag    
	mov  ah, 0Ch  ;Teletype
	int  10h

	sub x,1
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
flechaArribaCtrl:
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag    
	mov  ah, 0Ch  ;Teletype
	int  10h

	sub y,1
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
flechaAbajoCtrl:
	mov cx,x
	mov dx,y
	mov  al, pixelguardar
	mov  bh, pag  
	mov  ah, 0Ch  ;Teletype
	int  10h

	add y,1
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov ah,0Dh
	int 10h
	mov pixelguardar,al
	
	mov cx,x
	mov dx,y
	mov bh,pag
	mov al,color3
	mov ah,0Ch
	int 10h
	
	jmp inicio2
dibujarLinea:		 ; Prueba de dibujar una linea
	mov al,color3
	mov [Color], al
	mov [point1X], 600
	mov [point2X], 6
	mov [point1Y], 122
	mov [point2Y], 88
	call DrawLine2D
	
	mov ah, 00h
	int 16h	
	
salir:
	mov ax,03h					; Para salir, antes de terminar el programa, se vuelve a modo texto
	int 10h

    mov ax, 4C00h				; Se termina el programa
    int 21h

 unico ends

 end start