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

    adorno       db '************************************************************************', 13, 10, 7, '$'
    university   db '*                 UNIVERSIDAD DE LAS FUERZAS ARMADAS - ESPE            *', 13, 10, 7, '$'
    msg          db '*                      Tema: programacion ensamblador                  *', 13, 10, 7, '$'
    practice     db '*                           Laboratorio: #2                            *', 13, 10, 7, '$'
    asignatura   db '*                   Asignatura: Computacion Digital                    *', 13, 10, 7, '$'
    teacher      db '*                      Docente: Msc. Diego Armijos                     *', 13, 10, 7, '$'
    group        db '*                              GRUPO#G3                                *', 13, 10, 7, '$'     
    autor_1      db '*                            Jefferson Mejia                           *', 13, 10, '$'     
    autor_2      db '*                             Pamela Tapia                             *', 13, 10, '$'     
    autor_3      db '*                           Angel Rodriguez                            *', 13, 10, '$'     
    autor_4      db '*                            Jordan Gavidia                            *', 13, 10, '$'      

    astronaut_1  db '*                                                                      *', 13, 10, '$'
    astronaut_2  db '*                                                                      *', 13, 10, '$'
    astronaut_3  db '*                                                                      *', 13, 10, '$'
    astronaut_4  db '*        _..._                                                         *', 13, 10, '$'
    astronaut_5  db '*      .""     ".      _                                               *', 13, 10, '$'
    astronaut_6  db '*     /    .-""-\\   _/ \                                              *', 13, 10, '$'
    astronaut_7  db '*   .-|   /:.   |  |   |                                               *', 13, 10, '$'
    astronaut_8  db '*   |  \  |:.   /.-""-./                                               *', 13, 10, '$'
    astronaut_9  db '*   | .-""-;:__.""""    =/                                             *', 13, 10, '$'
    astronaut_10 db '*   .""=  *=|DREAMS_.=""                                               *', 13, 10, '$'
    astronaut_11 db '*  /   _.  |    ;                                                      *', 13, 10, '$'
    astronaut_12 db '*  ;-.-""|    \   |                                                    *', 13, 10, '$'
    astronaut_13 db '* /   | \    _\  _\                                                    *', 13, 10, '$'
    astronaut_14 db '* \__/"". |  ''==''\                                                   *', 13, 10, '$'
    astronaut_15 db '*         \    \   |                                                   *', 13, 10, '$'
    astronaut_16 db '*         /    /   /                                                   *', 13, 10, '$'
    astronaut_17 db '*         /-._/._/                                                     *', 13, 10, '$'
    astronaut_18 db '*         \   ''``\  \                                                 *', 13, 10, '$'
    astronaut_19 db '*          ''-._/._/                                                   *', 13, 10, '$'
          

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
        
        ;PROCESO DE BARRIDO DE PANTALLA - SECCION#1
        mov ax, 0600h ;LIMPIAR PANTALLA
        ;DEFINIR COLOR DE FONDO(PRIMER DIGITO) Y COLOR DE FUENTE (SECUNDO DIGITO)
        mov bh, 2fh
        ;INICIALIZAR LA CUENTA EN EL REGISTRO CONTADOR PARA BARRER DESDE FILA 0 Y COLUMNA 0
        mov cx, 0000h 
        ; BARRIDO FILA 3, COLUMNA 27H
        mov dx, 0c27H
        ;INTERRUPCION DE PANTALLA
        int 10h       
                            
        ;PROCESO DE BARRIDO DE PANTALLA - SECCION#2
        mov ax, 0600h ;LIMPIAR PANTALLA
        ;DEFINIR COLOR DE FONDO(PRIMER DIGITO) Y COLOR DE FUENTE (SECUNDO DIGITO)
        mov bh, 4fh
        ;INICIALIZAR LA CUENTA EN EL REGISTRO CONTADOR PARA BARRER DESDE FILA 0 Y COLUMNA 40
        mov cx, 0028h 
        ; BARRIDO HASTA FILA 12, COLUMNA 79
        mov dx, 0c4fH
        ;INTERRUPCION DE PANTALLA
        int 10h 
                 
                
        ;PROCESO DE BARRIDO DE PANTALLA -  SECCION#3
        mov ax, 0600h ;LIMPIAR PANTALLA
        ;DEFINIR COLOR DE FONDO(PRIMER DIGITO) Y COLOR DE FUENTE (SECUNDO DIGITO)
        mov bh, 3fh
        ;INICIALIZAR LA CUENTA EN EL REGISTRO CONTADOR PARA BARRER DESDE FILA 13 Y COLUMNA 0
        mov cx, 0d00h 
        ; BARRIDO HASTA FILA 24, COLUMNA 39
        mov dx, 1827H
        ;INTERRUPCION DE PANTALLA
        int 10h 
                       
                       
        ;PROCESO DE BARRIDO DE PANTALLA -  SECCION#4
       mov ax, 0600h ;LIMPIAR PANTALLA
        ;DEFINIR COLOR DE FONDO(PRIMER DIGITO) Y COLOR DE FUENTE (SECUNDO DIGITO)
        mov bh, 5fh
        ;INICIALIZAR LA CUENTA EN EL REGISTRO CONTADOR PARA BARRER DESDE FILA 13 Y COLUMNA 40
        mov cx, 0d28h 
        ; BARRIDO FILA 40, COLUMNA 79
        mov dx, 284fH
        ;INTERRUPCION DE PANTALLA
        int 10h           
                 
        ;MACRO PARA IMPRIMIR MENSAJE EN PANTALLA
        printf macro msjimp
            mov ah, 09h
            mov dx, offset msjimp
            int 21h
        endm   
 
        
        printf adorno
        printf university 
        printf msg  
        printf practice 
        printf group  
        printf asignatura
        printf teacher
        printf autor_1
        printf autor_2
        printf autor_3
        printf autor_4
        printf astronaut_1  
        printf astronaut_2
        printf astronaut_3
        printf astronaut_4
        printf astronaut_5
        printf astronaut_6
        printf astronaut_7
        printf astronaut_8
        printf astronaut_9
        printf astronaut_10
        printf astronaut_11
        printf astronaut_12
        printf astronaut_11
        printf astronaut_12
        printf astronaut_13
        printf astronaut_14
        printf astronaut_15
        printf astronaut_16
        printf astronaut_17
        printf astronaut_18
        printf astronaut_19
        printf adorno
        
        ;PAUSAR PANTALLA
        mov ax, 0c07h
        int 21h
    .exit
end
    
    
    
    
    
    
    
    