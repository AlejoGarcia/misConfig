# Cheatsheet propia del editor Vim

## Movimientos

### h
Mueve el cursor hacia la izquierda

### j
Mueve el cursor hacia abajo

### k 
Mueve el cursor hacia arriba

### l
Mueve el cursor haica la derecha

### gj
Mueve el cursor hacia abajo en una linea multiple

### gk
Mueve el cursor hacia arriba en una linea multiple

### H
Mueve el cursor hacia la parte de arriba de la pantalla

### M
Mueve el cursor hacia el medio de la pantalla

### L
Mueve el cursor hacia la parte de abajo de la pantalla 

### w
Salta hasta el siguiente inicio de palabra

### W
Salta hasta el siguiente inicio de palabra (la palabra puede contener simbolos
de puntuacion)

### e 
Salta hasta el siguiente final de palabra

### E
Salta hasta el siguiente final de palabra (la palabra puede contener simbolos
de puntuacion)

### b
Salta hasta el anterior inicio de palabra
 
### B
Salta hasta el anterior inicio de palabra (la palabra puede contener simbolos
de puntuacion)

### ge
Salta hasta el anterior final de palabra

### gE
Salta hasta el anterior final de palabra (la palabra puede contener simbolos
de puntuacion)

### %
Mueve el cursor hasta el siguiente simbolo emparejado (los simbolos normales 
son las parejas de parentesis, corchetes y llaves) (mas info en :h matchpairs)

### 0
Mueve el cursor hasta el inicio de la linea

### ^
Mueve el cursor hasta el inicio de la linea (despues de espacios en blanco)

### $
Salta hasta el final de la linea

### g_
Salta hasta el ultimo caracter no en blanco de la línea

### gg
Salta hasta la primera linea del documento

### G
Salta hasta la ultima linea del documento

### 5gg o 5G
Salta hasta la línea 5

### gd
Salta a la declaracion local

### gD
Salta a la declaracion global

### fx
Salta a la siguiente aparicion del caracter 'x'

### tx
Salta hasta justo antes de la siguiente aparicion del caracter 'x'

### Fx
Salta hasta la aparicion previa del caracter 'x'

### Tx
Salta hasta justo antes de la aparicion previa del caracter 'x'

### ;
Repite el movimiento anterior (para f, t, F o T)

### ,
Repite el movimiento anterior (para f, t, F o T) del reves

### }
Salta hasta el siguiente parrafo (o funcion o bloque de codigo)

### {
Salta hasta el anterior parrafo (o funcion o bloque de codigo)

### zz
Centra el cursor en la pantalla

### <C e>
Mueve la pantalla hacia abajo una linea (sin mover el cursor)

### <C y>
Mueve la pantalla hacia arriba una linea (sin mover el cursor)

### <C b>
Mueve hacia atras una pantalla completa

### <C f>
Mueve hacia delante una pantalla completa

### <C d>
Mueve hacia delante media pantalla

### <C u>
Mueve hacia atras media pantalla

#### NOTA A PARTE
Cualquiera de estos movimientos con un numero delante como prefijo (por
ejemplo 7w repite el movimiento (en este caso 'w'... siguiente inicio de
palabra) tantas veces como indica el numero (en este caso 7)

## Modo *insertar*

### i
Entra en el modo insertar o empieza a insertar o insertar, antes del cursor

### I
Entra en el modo insertar o empieza a insertar o insertar, al inicio de linea

### a
Entra en el modo insertar o empieza a insertar o insertar, despues del cursor

### A
Entra en el modo insertar o empieza a insertar o insertar, al final de linea

### o
Insertar creando una linea nueva justo debajo de la linea del cursor

### O
Insertar creando una linea nueva justo encima de la linea del cursor

### ea
Inserta al final de la palabra

### <C h>
Elimina el caracter anterior al cursor estando en modo insercion

### <C w>
Elimina una palabra antes del cursor durante el modo insercion

### <C j>
Inicia una nueva linea durante el modo insercion

### <C t>
Indenta la linea una tabulacion en modo insercion

### <C d>
Deindenta la linea una tabulacion en modo insercion

### <C n>
Inserta el siguiente acierto de autocompetar en modo insercion

### <C p>
Inserta el anterior acierto de autocompletar en modo insercion

### <C rx>
Inserta el contenido del registro x

### <C ox>
Entra temporalmente en modo *normal* para ejecutar el comando 'x' antes de
volver a modo insercion

### Esc (or <C c>)
Salir del modo insercion

## Trabajando con multiples ficheros

### :e[dit] 'file'
Abre un nuevo buffer para editar el archivo 'file'

### :bn[ext]
Salta al siguiente buffer

### :bp[revious]
Salta al anterior buffer

### :bd[elete]
Elimina un buffer (cierra un archivo)

### :b[uffer]n
Va al buffer con numero indice 'n'



