; TEMA: PROGRAMA EN ENSAMBLADOR EQUIVALENTE A LENGUAJE C
; ESTUDIANTES: TAPIA PAMELA, MEJIA JEFFERSON, GAVIDIA JORDAN, MONTEROS IAN     
; GRUPO#6
; ASIGNATURA: COMPUTACION DIGITAL
; FECHA: 01/02/2024     
; VERSION: 0.0.1

; ANADIR LIBRERIAS A "#INCLUDE <STDIO.IN>"   
.model  tiny                   

;DECLARAR VARIABLES, ESTABLECER SEGMENTO DE MEMORIA DONDE VAN LAS VARIABLES
.data
    adorno     db '************************************************************************$'
    autor      db 'Jefferson Mejia, Pamela Tapia, Angel Rodriguez, Jordan Gavidia', 13, 10, 7, '$'     
    msg        db 'Estoy realizando la practica del laboratorio#2', 13, 10, 7, '$'
    asignatura db 'Computacion Digital', 13, 10, 7, '$'

.code
    .startup
    ;LLAMADA AL SISTEMA PARA COLOCAR CURSOR EN LA PANTALLA
    mov ah, 02h
    ;INICIO DE BARRIDO DE LA PANTALLA FILAS (24, 0-24 EN DECIMAL) - PARTE ALTA
    mov dh, 00h  
    ;INICOI DE BARRIDO PANTALLA COLUMNAS (80, 0-79) - PARTE BAJA
    mov dl, 00h
    ;PROCESO QUE TERMINA CON UNA INTERRUPCION
    int 10h    
    
    ;PROCESO DE BARRIDO DE PANTALLA
    mov ax, 0600h ;LIMPIAR PANTALLA
    ;DEFINIR COLOR DE FONDO(PRIMER DIGITO) Y COLOR DE FUENTE (SECUNDO DIGITO)
    mov bh, 2fh
    ;INICIALIZAR LA CUENTA EN EL REGISTRO CONTADOR PARA BARRER DESDE FILA 0 Y COLUMNA 0
    mov cx, 0000h 
    ; BARRIDO FILA 18H Y COLUMNA 4FH
    mov dx, 1827H
    ;INTERRUPCION DE PANTALLA
    int 10h       
                        
    ;PROCESO DE BARRIDO DE PANTALLA
    mov ax, 0600h ;LIMPIAR PANTALLA
    ;DEFINIR COLOR DE FONDO(PRIMER DIGITO) Y COLOR DE FUENTE (SECUNDO DIGITO)
    mov bh, 4fh
    ;INICIALIZAR LA CUENTA EN EL REGISTRO CONTADOR PARA BARRER DESDE FILA 0 Y COLUMNA 0
    mov cx, 0028h 
    ; BARRIDO FILA 18H Y COLUMNA 4FH
    mov dx, 184fH
    ;INTERRUPCION DE PANTALLA
    int 10h 
    
    ;MACRO PARA IMPRIMIR MENSAJE EN PANTALLA
    printf macro msjimp
        mov ah, 09h
        mov dx, offset msjimp
        int 21h
    endm
    
    printf adorno
    printf autor
    printf msg  
    printf asignatura
    printf adorno
    
    ;PAUSAR PANTALLA
    mov ax, 0c07h
    int 21h
    .exit
end
    
    
    
    
    
    
    
    