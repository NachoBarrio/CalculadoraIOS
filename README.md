# CalculadoraIOS
Ejemplo calculadora realizado con Swift
Construcción de una calculadora que realiza las funciones básicas con dos dígitos y un operador. 
Además borra el contenido de la operación.

Diseño visual:
Para mantener la estructura inalterada con el cambio de dispositivos o plataformas se ha optado por construir una vista compuesta por 
5 StackViews cada uno de ellos conteniendo 4 botones de igual tamaño.
Para el caso del StackView con 3 botnes (0,CE,/) se incluyó otros StackViews interiores para organizar los botones y que ocupasen
su correspondiente anchura.
Se hizo uso de constraints para asegurarnos de mantener estable el diseño.

Diseño lógico:
La calculadora permite realizar las operaciones lógicas en una secuencia de comandos establecidos:
- Insertar operación: numero + operador + numero + calcular
- Borrar contenido: pulsar CE en cualquier momento
- No es capaz de operar con mas de dos operandos o mas de 2 simbolos por el momento.
