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

### Esc (o <C c>)
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

### :b[uffer] 'file'
Va al buffer con nombre de archivo 'file'

### :ls (o :buffers)
Lista todos los buffers abiertos

### :sp[plit] 'file'
Abre el archivo 'file' en un nuevo buffer y lo coloca en una ventana partida
verticalmente

### :vs[plit] 'file'
Abre el archivo 'file' en un nuevo buffer y lo coloca en una ventana partida
horizontalmente

### :vert[ical] ba[ll]
Edita todos los buffers como ventanas partidas verticalmente

### :tab ba[ll]
Edita todos los buffers como tabs

### <C ws>
Crea ventana horizontal nueva (duplica archivo abierto)

### <C wv>
Crea ventana vertical nueva (duplica archivo abierto)

### <C ww>
Cambia entre ventanas (siguiente ventana partida)

### <C wq>
Elimina una ventana

### <C wx>
Intercambia ventana actual con la siguiente

### <C w=>
Hace a todas las ventanas de la misma anchura y altura

### <C w+>
Mueve la linea de division hacia arriba en ventanas partidas 
horizontalmente

### <C w->
Mueve la linea de division hacia abajo en ventanas partidas
horizontalmente

### <C w<>
Mueve la linea de division hacia la izquierda en ventanas
partidas verticalmente

### <C w>>
Mueve la linea de division hacia la derecha en ventanas partidas
verticalmente

## <C wh>
Mueve el cursor a la ventana que se encuentra a la izquierda
de la actual

### <C wl>
Mueve el cursor a la ventana que se encuentra a la derecha
de la actual

### <C wk>
Mueve el cursor a la ventana que se encuentra encima de la ventana
actual

### <C wj>
Mueve el cursor a la ventana que se encuentra debajo de la ventana
actual

### <C wH>
Hace la ventana actual de altura maxima y la coloca a la izquierda
del todo

### <C wJ>
Hace la ventana actual de anchura maxima y la coloca en la parte 
superior del todo

### <C wK>
Hace la ventana actual de anchura maxima y la coloca en la parte
inferior del todo

### <C wL>
Hace la ventana actual de altura maxima y la coloca a la derecha
del todo

## Copiar y pegar

### yy
Copia una linea

### 2yy
Copia dos lineas

### yw
Copia las letras de una palabra desde la posicion actual del cursor hasta
el inicio de la siguiente (includo el espacio)

### yiw
Copia la palabra sobre la que se encuentra el cusor (este donde este
sobre la palabra)

### yaw
Copia la palabra sobre la que se encuentra el cusor y tambien los 
espacios en blanco que existan antes y despues de la palabra

### y$
Copia hasta el final de la linea

### p
Pega el portapapeles justo despues del cursor

### P
Pega el cortapapeles antes del cursor

### gp
Pega el portapapeles despues del cursor y deja el cursor despues del texto
pegado

### gP
Pega el portapapeles antes del cursor y deja el cursor despues del texto
pegado

### dd
Elimina guardando en portapapeles (cortar) una linea

### 2dd
Elimina guardando en portapapeles (cortar) dos lineas

### dw
Corta las letras de la palabra desde donde esta el cursor hasta el inicio
de la siguiente

### diw
Corta la palabra sobre la que se encuentra el cursor 

### daw
Corta la palabra sobre la que se encuentra el cursor incluyendo los espacios
en blancos antes y despues

### D
Corta desde la posicion del cursor hasta el final de la linea

### d$
Corta desde la posicion del cursor hasta el final de la linea

### x
Corta un solo caracter (sobre el que esta el cursor)

## Indentacion de texto

### >>
Indenta (hacia la derecha) la linea una tabulacion

### <<
Deindenta (hacia la izquierda) la linea una tabulacion

### >%
Indenta un bloque contenido entre parentesis o corchetes (con el cursor sobre
uno de los simbolos de bloque)

### >ib
Indenta el bloque interior de unos parentesis

### >at
Indenta el bloque contenido por <>

### 3==
Reindenta 3 lineas

### =%
Reindenta un bloque con parentesis o corchetes (con el cursor sobre uno de 
esos simbolos de bloque)

### iB
Reindenta un bloque interno con corchetes

### gg=G
Reindenta el buffer entero

### ]p
Pega y ajusta al indentado de esta linea

## Salida

### :w
Guardar el archivo pero sin salir

### :w !sudo tee %
Guardar el archivo actual con permiso de administrador

### :wq
Guardar el archivo actual y salir

### :q
Salir sin guardar y sin haber cambiado nada en el archivo

### :q! o ZQ
Salir y deshechar los cambios

### :wqa
Guarda y sale de todas las tabs abiertas

## Busqueda y reemplazo

### /'patron'
Busca el texto de 'patron' en todo el buffer

### ?'patron'
Busca el texto de 'patron' en todo el buffer hacia atras

### \v'patron'
