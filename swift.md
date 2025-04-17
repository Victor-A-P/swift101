# Swift 101
-----------------------------------------------------------------------
## INDICE
* [**¿Qué es?**](#qué-es)<br>
* [**Variables**](#variables)<br>
* [**Constantes**](#constantes)<br>
* [**Tipos en Swift**](#tipos-en-swift)<br>
  * [Tipos Básicos](#tipos-básicos)<br> 
  * []()<br> 
  * []()<br> 
  * []()<br> 
  * 
* [**Operadores**](#operadores)<br>
  * []()<br> 
  * []()<br> 
  * 
* [****]()<br>
* 
  
----------------------------------------------------------------------
### ¿Qué es?

Es un lenguaje que es compilado <sub><b>[1](#subindice-1)</b></sub> que tambien es multiparadigma <sub><b>[2](#subindice-2)</b></sub> desarrollado por Apple como un remplazo de <u>Objective-C</u><br><br>
Las metas del lenguaje son:
* Tener medidas de seguridad para prevenir errores en producción
* Tener una velocidad parecida a quella de los lenguajes que estan basados en C
* Tener una sintaxis que se puede disfutar al leer y al escribir
  

[⬆ Inicio](#indice)


----------------------------------------------------------------------
### Variables

En Swift es posible asociar valores con un nombre, definiendolo como una variable y asignandole un valor. Este mismo nombre puede ser usado para referirse al valor a lo largo del programa
>[!Tip] Las variables son &nbsp;<u><b>mutables</b></u>&nbsp; lo que significa que puede ser cambiado en cualquier momento

Las variables en Swift se definen con la palabra clave ```var```

``` swift
    var variable = 10;//variable implicita, se asume que es 'int'
    var imoVar : Int = 12; //variable explicita ya que se indica que es int; 
```

>[!Note] Swift es un lenguaje "&nbsp;type-safe&nbsp; "
> Es decir que es un lenguaje tipado estaticamente seguro, lo que significa que todos los valores tienen un "tipo" al momento que se compila y se puede declarar estas explicitamente o dejar que el compilador infiera el tipo; de tal manera que el "tipo" de la varible se fija una vez es definida.

``` swift
var1 = 13 //es tipo Int

var1 = "Hello" //Causaría un error de compilación ya que no se realizo una conversión de tipo
```

<br>
Las variables pueden ser declaradas sin inicializarlas <small>(sin asignarles un valor)</small>, solo proporcionando un <u>tipo</u> y un <u>nombre</u>. 

>[!WARNING]
>No deben de ser usado variables que no han sido previamente declaradas e inicializadas ya que esto causaria un error de compilación
``` swift
    var someVar: String;

    print(someVar); //Esto causaría un error ya que no ha sido inicializada la variable
```
<br>

[⬆ Inicio](#indice)

----------------------------------------------------------------------

### Constantes

<br>

A diferencia de las variables, las <u>constantes</u> una vez que se les asigna un valor este ya no puede ser cambiado, es decir que son <u><b>_inmutables_</b></u>, se usa la palabra clave ```let```

``` swift
    let constantName = 10          // Implicita
    let explicitConstant: Int = 10 // Explicita 
```

<br>

[⬆ Inicio](#indice)

----------------------------------------------------------------------

### Tipos en Swift

<br>

* #### Tipos Básicos

    * <b>Enteros (Int)</b>: Números sin decimales.
    ``` swift
        var entero: Int = 42 
    ```

    * <b>Flotantes (Float y Double)</b>: Números con decimales; Double ofrece mayor precisión.
    ```swift
        var decimal: Double = 3.14159      
    ```

    * <b>Booleanos (Bool)</b>: Representan valores lógicos: true o false.
    ```swift
        var booleano: Bool = true  
    ```

    * <b>Cadenas de Texto (String y Character)</b>: Para trabajar con texto y caracteres individuales.
    ```swift
        var texto: String = "Hola, Swift" 

        var caracter: Character = "A"   
    ```

    * <b>Opcionales</b>: Cualquier tipo puede ser opcional (por ejemplo, Int? o String?), lo que indica que la variable puede no tener valor ```nil```.
    ``` swift
        var numeroOpcional: Int? = nil
    ```

* #### Tipos de Colección

    * <b>Arrays:</b> Listas ordenadas de elementos del mismo tipo.
    
    ``` swift
        var arr: [String] = ["Manzana", "Banana", "Cereza"]  
    ```

    * <b>Diccionarios:</b> Colecciones de pares clave-valor, donde la clave y el valor son de tipos específicos.
    
    ```swift
        var diccionario: [String: Int] = 
        [
            "Uno": 1,
            "Dos": 2
        ]
        // Diccionario con claves String y valores Int.
    ```

    * <b>Sets:</b> Colecciones sin orden que solo almacenan valores únicos.
  ``` swift

        var conjunto: Set<Int> = [1, 2, 3, 3]   // Set de Ints (valores únicos).
  ```

* #### Tipos Compuestos

    * <b>Tuplas:</b> Agrupan varios valores en un solo valor compuesto.
    ``` swift
        // Tuplas: Agrupan varios valores en un solo tipo.
        let persona = (nombre: "Juan", edad: 25)  // Tupla con un String y un Int.
        print("Nombre: \(persona.nombre), Edad: \(persona.edad)")
    ```

    * <b>Enumeraciones (enum):</b>  Definen un conjunto de valores predefinidos y pueden tener valores asociados.
    ``` swift
        // Enumeraciones: Definen un conjunto de valores.
        enum Direccion {
            case norte
            case sur
            case este
            case oeste
        }
        let miDireccion: Direccion = .norte  // Se asigna un valor del enum 'Direccion'.
    ```

    * <b>Estructuras (struct):</b> Permiten agrupar propiedades y métodos en un tipo de valor.
    ``` swift
        // Estructuras: Tipos de valor que agrupan datos y comportamientos.
        struct Punto 
        {
            var x: Double  // Propiedad: coordenada en x.
            var y: Double  // Propiedad: coordenada en y.
        }
        let punto = Punto(x: 10.0, y: 20.0)
        print("Punto en (\(punto.x), \(punto.y))")
    ```


    * <b>Clases (class):</b>  Similar a las estructuras, pero son tipos por referencia y admiten herencia.

    ``` swift
    // Clases: Tipos por referencia, que pueden heredar de otras clases.
    class Animal 
    {
        var nombre: String
        init(nombre: String) 
        {
            self.nombre = nombre  // 'self' hace referencia a la instancia actual.
        }
    }
    let perro = Animal(nombre: "Firulais")
    print("El animal se llama \(perro.nombre)")

    ```

* #### Otros

    * <b>Protocolos</b>: Especifican un conjunto de métodos o propiedades que un tipo debe implementar.
    ``` swift
        protocol Movible {
        func mover()  // Los tipos que adopten este protocolo deberán implementar 'mover'.
        }
        struct Coche: Movible {
            func mover() {
                print("El coche se está moviendo")
            }
        }
        let miCoche = Coche()
        miCoche.mover()
    ```

    * <b>Closures</b>: Bloques de código autoconclusivos que se pueden almacenar en variables o pasar como argumentos.

    ``` swift
        let saludar = 
        { 
            (nombre: String) in
            print("Hola, \(nombre)!")
        }
        saludar("Ana")  // Se ejecuta el closure y muestra el saludo.

    ```

    * <b>Typealiases</b>: Permiten asignar un nuevo nombre a un tipo existente para mayor claridad.

    ``` swift
        typealias EnteroGrande = Int
        let numeroGrande: EnteroGrande = 1000
        print("Número grande: \(numeroGrande)")
    ```

[⬆ Inicio](#indice)




----------------------------------------------------------------------

### Operadores

Para los ejemplos se usara las siguientes variables:

``` swift
    let var1 = -10;
    let var2 = 6;
```

* #### Aritmeticos
  | Operador | Significado |Ejemplo|
  |:-:|:-:|:-|
  |```+```|Suma|``` var1 + var2 ```|
  |```-```|Resta|```var1 - var2```|
  |```*```|Multiplicación|```var1 * var2```|
  |```/```|División|```var1 / var2```|
  |```%```|Residuo<br>Mod|```var1 % var2```|

<br>

* #### Asignación
  | Operador | Significado |Ejemplo|Resultado|
  |:-:|:-:|:-|:-|
  |```=```| Asignación|```let var1 = -10```||
  |```+=```|Adicción|```var1 += 2```|```var1 => -8```|
  |```-=```|Sustracción|```var1 -= 2```|```var1 => -12```|
  |```*=```|Multiplicación|```var1 *= 2```|```var1 => -20```|
  |```/=```|División|```var1 /= 2```|```var1 => -5```|
  |```%=```|Residuo|```var1 % = 2```|```var1 => 0```|

    <br>

    Para operaciones con datos a nivel de bits, como en la criptografía o compresión de datos.

    Se utiliza esta variable en los siguientes operadores, a no ser que se cambie el valor en el ejemplo
    ``` swift
        var a = 0b1100  //
    ```
    | Operador | Significado |  Ejemplo |Resultado|
    |:-:|:-:|:-|:-|
    |```&=```|Operación AND|```a &= 0b1010```|```a => 0b1000``` es 8 en decimal, esto es porque en la operación AND solo los bits que estan activos en ambos operandos permanecen activos en el resultado.<br> ```&``` es el operador sin operador de asignación|
    |```\|=```|Operación OR|```a \|= 0b1010```|```a => 0b1110``` es 14 en decimal, esto porque en la operación OR los bits que estan activos en alguno de los operandos permanecen activos en el resultado.<br> ```\|```  es el operador sin operador de asignación|
    |```^=```|Operación XOR|```a ^= 0b1010```|```a => 0b0110``` es 6 en decimal, esto porque el la operación XOR solo los bits que son diferentes entre los operandos se establecen como 1 en el resultado.<br> ```^``` es el operador sin operador de asignación|
    |```<<=```|Desplazamiento a la izquierda con asignación|```var a = 0b0001 ``` <br><br>``` a <<= 2```|```a => 0b0100``` es 4 en decimal, ya que este operador desplaza los bits de la variable hacia la izquierda por el número de posiciones especificado, llenando con ceros los bits menos significativos(a la derecha) y asigna el resultado de la variable.<br> ```<<``` es el operador sin operador de asignación|
    |```>>=```|Desplazamiento a la derecha con asignación|``` a >>= 2```|```a => 0b0011``` es 3 en decimal, ya que este operador desplaza los bits de la variable hacia la derecha por el número de posiciones especificado, llenando con ceros los bits más significativos (para enteros sin signo), y asigna el resultado a la variable.<br> ```>>``` es el operador sin operador de asignación|

    >[!NOTE] Adicionalmente hay un operador más &nbsp;<code> ~ </code>&nbsp; en las operaciones de bit que invierte los valores de los bit, es decir 0 -> 1 y 1 -> 0

  
 
<br>

* #### Comparación
  
    | Operador | Significado |Ejemplo|Resultado|
    |:-:|:-:|:-:|:-|
    |```==```|Igual a|```let a = 1```<br>```let b = 1```<br>```a == b```|```true```|
    |```===```|Identico a|<b><small>[3](#subindice-3)</small></b>|```true```<br>```false```|
    |```!=```|Diferente de| a != b|```false```|
    |```!==```|NO identico a| <b><small>[4](#subindice-4)</small></b>|```true```|
    |```~=```|Coincidencia de Patrones|<b><small>[5](#subindice-5)</small>|```true```|
    |```>```|Mayor que|```5 > 10```|```false```|
    |```<```|Menor que|```5 < 10```|```true```|
    |```<=```|Menor o Igual que|```5 <= 10```|```true```|
    |```>=```|Mayor o Igual que|```5 >= 10```|```false```|


<br>

* #### Unitarios

Son aquellos que cambian el signo de una variable(valor) numerica con solo un prefijo
  | Operador | Significado |Ejemplo|Resultado|
  |:-:|:-:|:-|:-|
  |```-```|Signo Negativo|```let ab = -var1```|```ab = 10```  -> <br>esto por la multiplicación de signos (-)(-) = (+)
  |```+```|Signo Positivo|```let ab = +var1```|```ab = -10```  -> <br>esto por la multiplicación de signos (-)(+) = (-)

<br>

* #### Lógicos
  | Operador | Significado |Ejemplo|Resultado|
  |:-:|:-:|:-|:-|
  |```!```|Negación|```var ab1 = (!(var1 == 10 ? true : false));```|Devuelve el  valor negado, en este caso ```!(false) = true``` ya que ```var1 = -10```|
  |```&&```|Conjunción Lógica<br>(And)|```var1 = -10 && var2 =6```|Ambas enunciados tienen que ser verdaderos para que sea ```true```|
  |```\|\|```|Disyunción Lógica<br>o<br>Disyunción Inclusiva<br>(OR)|```var1 = 1 \|\| var2 = 6```|Solo una de los 2 enunciados tiene que ser verdad para que el valor devuelto sea ```true```|
  |```()``` |Paréntesis Explícitos|```!(...)```| Negará lo que esta dentro del paréntesis; hacen mas fácil de leer la expresión|


<br>


* #### Rango
  | Operador | Significado |Ejemplo|
  |:-:|:-:|:-|
  |```a ... b```|Rango Cerrado|```1 ... 6``` va del 1 a 6 tomando en cuenta ambos limites como posibles valores|
  |```a ..< b```|Rango<br>Semi-Abierto|```1 ..< 6``` va del 1 a 5 tomando en cuanta solo el 1 como posible valor|
  |```..< b```<br>```a ... ```|Rango<br>Unilateral|``` ..< 3``` Este rango tendrá como valores cualquier número que se encuentre antes del 3 incluyendo valores negativos<br>```1 ... ``` Este rango tendra como valores cualquier número natural(0~...), &nbsp;<b>por ello es de suma importancia delimitar una condición cuando debe de acabar el rango</b> |


* #### Desbordamiento
  | Operador | Significado |Ejemplo|
  |:-:|:-:|:-|
  |```-&```|Substracción| <b><small>[6]()</small></b>|
  |```+&```|Adicción| <b><small>[6]()</small></b>|

``` swift
    var willOverflow = UInt8.max
    willOverflow = willOverflow &+ 1
    // willOverflow equivale a 255, que es el valor maximo que UInt8 puede tener
    // willOverflow usando el operador para truncar con seguridad en los bits disponibles; ahora vale 0

    var willUnderflow = UInt8.min
    willUnderflow = willUnderflow &- 1
    // willUnderflow esquivale a 0 ya que es el valor minimo que puede tener
    // willUnderflow usando el operador para truncar con seguridad en los bits disponibles; ahora vale 255
```




* #### Valores Opcionales y Flujo del Programa
    | Operador | Significado | Ejemplo |
    |:------:|:---------:|:------|
    |``` ?? ```|Fusión de Nulos|``` let nombreOpcional: String? = nil```<br>```let nombre = nombreOpcional ?? "Invitado"```<br>```print(nombre) // Imprime "Invitado"```<br>Permite proporcionar un valor <u>predeterminado</u> cuando un valor opcional es ```nil```|
    |```?:```|Condicional Ternario|```let mensaje = edad >= 18 ? "Adulto" : "Menor"```<br>Permite realizar una evaluación condicional que devuelve uno de dos valores|
    |```!```|Desempaquetado forzado|```let textoOpcional: String? = "Hola"```<br>```let texto = textoOpcional!```<br>Es utilizado para acceder al valor subyacente de un opcional que se sabe que no es ```nil```<br><small>*Es importante asegurarse de que el valor opcional no sea ```nil``` antes de usar ```!```, ya que de lo contrario el programa generará un error en tiempo de ejecución.</small>|
    |```?.```|Encadenamiento opcional|<b>[]()</b><br>Este operador permite acceder a propiedades, métodos o subíndices de un valor opcional de forma segura. Si el valor opcional es nil, la expresión completa devuelve nil sin causar un error.|

<br><br>


>[!WARNING] En Swift el espacio que se deja antes y despues de un operador debe de ser el mismo, de lo contrario habrá un error

<br>

[⬆ Inicio](#indice)

--------------------------------------------------------------------------------------------------------------------------------------------

### FUNCIONES
Son pedazos de código que realizan cierta tarea; estas tienen un tipo de retorno, por lo tanto pueden ser usado como un valor usado en un argumento de otra función<br>&nbsp;Esta es la estructura básica de un función swift:
``` swift
    func functionName(argumentLabel parameterName: ArgumentType) -> ReturnType
    {
        ...
    }
``` 
>[!CAUTION] Swift es un poco especialito y te permite tener un &nbsp;<code>argumentLabel</code>&nbsp; _'Etiqueta de Argumento'_ que es con el que se mandará a llamar la función &nbsp;<code> parameterName </code>&nbsp; <u>'Nombre del parametro'</u> que es con la que se trabaja dentro del cuerpo de la función
>``` swift
>   func saludar(a nombre: String) 
>   {
>       print("Hola, \(nombre)")
>   }
>
>   saludar(a: "Carlos") // Imprime: Hola, Carlos
>```

<br>

[⬆ Inicio](#indice)

--------------------------------------------------------------------------------------------------------------------------------------------

### PIE DE PÁGINA

###### Subindice [1]
>[!NOTE] Lenguaje Compilado VS Interpretado VS Trasnpilado
>
><table>
>   <thead>
>       <tr>
>           <th align="center"> <!--  --> </th>
>           <th align="center"><b><u>Compilado</u></b></th>
>           <th align="center"><b><u>Interpretado</u></b></th>
>           <th align="center" colspan="3"><b><u>Transpilado</u></b></th>
>       </tr>
>   </thead> 
>   <tbody>
>       <tr>
>           <td align="center" rowspan="2"  style="writing-mode:vertical-rl;text-orientation:upright;">Funcionamiento</td>
>           <td align="center" colspan="2"> Los compiladores e intérpretes toman código legible por los humanos y lo convierten en código máquina legible por computadoras.</td>
>           <td align="center" >El código se traduce a otro lenguaje de alto nivel antes de ejecutarlo</td>
>       </tr>
>      <tr>
>           <td align="center">La máquina destino traduce directamente el programa. Tu código fuente se traduce por completo a código máquina (o a un formato intermedio muy cercano, como bytecode que el procesador puede ejecutar) antes de ejecutarlo.</td>
>           <td align="center">Un programa(interprete) lee el código y lo ejecuta línea a línea en tiempo de ejecución, sin generar un binario previo.</td>
>           <td align="center" >No se genera código maquina directamente sino que se aprovecha un <u>compilador</u> o un <u>intérprete</u> existente para el lenguaje destino</td>
>       </tr>
>       <tr>
>           <td align="center" style="writing-mode:vertical-rl;text-orientation:upright;" rowspan="4" >Ejemplo</td>
>           <td align="center" colspan="2" rowspan="2"><br><br><br><br><br><br> Imagina que se tiene una receta de hummus y la quieres preparar, pero está escrita en griego antiguo. Y hay dos maneras en que, alguien que no habla griego antiguo, podría seguir dichas instrucciones.<br><br><br><br><br></td>
>           <td align="left" rowspan="4"> <u>1. Receta original en griego antiguo</u> <br><br> &nbsp;&nbsp; * Imagina que la receta original usa términos y medidas muy antiguos, por ejemplo “ὀξύς ἐλαιόλαδος” (aceite de oliva virgen) o “μέτριον ὕδωρ” (cantidad moderada de agua).<br><br> <u>2. Transpilación</u> <br><br>&nbsp;&nbsp; * Antes de cocinar, no traduces directamente al español moderno, sino que conviertes la receta a un español antiguo o arcaico (o a un dialecto regional), que luego se interpreta con tu amigo griego antiguo. <br> <code>Tomad garbanzos cocidos, trituradlos con ὀξύς ἐλαιόλαδος (aceite de oliva virgen),añadid μέτριον ὕδωρ (agua templada),sal y ajo a vuestro gusto.</code><br> ⬆ Esta es la versión transpilada, aún contiene fragmentos griedos(porque se quiere conservar parte de la sintaxis original), pero la estructura y gran parte del lenguaje es español<br><br> <u>3. Interpretación de la versión transpilada</u><br><br> * Ahora tu amigo que sabe griego antiguo te ayuda línea a línea, traduciendo solo los términos griegos que quedaron: <br>“ὀξύς ἐλαιόλαδος” → “aceite de oliva virgen” <br> “μέτριον ὕδωρ” → “agua templada” <br><br> <u>4.Cocinar</u> <br><br>&nbsp;&nbsp; * Se sigue la receta casi en español, solo pidiendo ayuda con las palabras griegas que quedaron tras la transpilación</td>     
>       </tr>
>       <tr>
>       </tr><!-- 2-->
>       <tr>
>           <td align="left" rowspan="2"> La primera es si alguien ya lo ha traducido anteriormente al español para ti. De esa manera cualquiera que hable el idioma podría leer la versión en español de la receta y hacer el hummus. Piensa en esta receta traducida como la versión compilada. </td>
>           <td align="left" rowspan="2"> La segunda manera es si tienes un amigo que sabe griego antiguo. Cuando estés listo para hacer hummus, tu amigo se sienta junto a ti y traduce la receta al español mientras avanzas, línea por línea. En este caso, tu amigo es el intérprete de la versión interpretada de la receta.</td>  
>       </tr><!-- 3-->
>       <tr>
>       </tr>
>       <tr>
>       </tr><!-- 4-->
>       <tr>
>           <td align="center" colspan="4"><u><b>¿Por qué es transpilado y no compilado?</b></u><br><br>
>           * No es compilado:Ya que no se obtuvo directamente la receta final en español moderno; tienes una versión “mixta” que requiere interpretación posterior.<br>
>           * No es puramente interpretado:Ya que no se traduce todo en tiempo real, solo los fragmentos necesarios porque ya adelantaste parte del trabajo con la transpilación.</td>
>       </tr>
>       <tr>
>           <td align="center" style="writing-mode:vertical-rl;text-orientation:upright;"><br>Ventajas<br></td>
>           <td><br> * Ya que el procesador lo puede compilar, como resultado suelen ser más rápidos y más eficientes al ejecutarse <br><br> * Tambien nos permiten como desarrolladores el tener más control sobre aspectos del hardware como la gestión de memoria y el uso del CPU <br><br> * Ejecutables muy rápidos (no hay sobrecarga de traducción en tiempo de ejecución).<br><br> * Protección del código fuente (sólo se distribuye el binario). <br><br></td>
>           <td><br><br> * Desarrollo muy rápido: se edita y ejecuta sin paso de compilación.<br><br> * Independencia de plataforma (mientras exista intérprete).<br><br> * Suelen ser más flexibles, y a menudo ofrecen características como escritura dinámica y un tamaño de programa más pequeño.<br><br> * Ya que los intérpretes ejecutan el código fuente del programa ellos mismos, el código en sí es independiente de la plataforma.</td>
>           <td><br><br> * Permite usar características modernas en entornos que sólo soportan versiones antiguas. <br><br> * Reutilización del ecosistema de herramientas (por ejemplo, compiladores, linters) del lenguaje destino.</td>
>       </tr>
>       <tr>
>           <td align="center" style="writing-mode:vertical-rl;text-orientation:upright;"><br>Desventajas<br></td>
>           <td><br> * Tiempo extra necesario para completar la compilación completa antes de la prueba <br><br> * Dependencia de la plataforma del código binario generado ya que suele ser especifico de la plataforma / arquitectura<br><br> * Es necesario recompilar tras cada cambio<br><br></td>
>           <td><br><br>  * Menor rendimiento (la traducción sobre la marcha añade sobrecarga).<br><br> </td>
>           <td><br> * Se depura en 2 niveles (fuente Original y el código generado del lenguaje destino)</td>
>       </tr>
>       <tr>
>           <td align="center"><b><br>Ciclo<br>edit<br> - <br> run<br></b></td>
>           <td align="center"><b><br>Editar<br>⬇<br>Compilar<br>⬇<br>Ejecutar<br></b></td>
>           <td align="center"><b><br>Editar<br>⬇<br>Ejecutar<br></b></td>
>           <td align="center"><b><br>Editar<br>⬇<br>Transpilar<br>⬇<br>Ejecutar<br></b></td>
>       </tr>
>       <tr>
>           <td><br>Lenguajes<br></td>
>           <td><br> * Java<br> * C<br> * C++<br> * Rust<br> * Go<br>* Swift</td>
>           <td><br> * Python<br> * Ruby<br> * PHP<br> * JavaScript<br></td>
>           <td><br> * T:Cfront(C++ -> C)<br> * T:HipHop(PHP -> C++)<br> * T:Babel(JS ES6 -> JS ES5)<br> * T:JSweet(JS -> TypeScript)<br> * T:Swiftify(Obj-c -> Swift)<br> * T:J2ObjC(Java -> Obj-c)</td>
>       </tr>
>   </tbody>
></table>


[↩ Regresar](#qué-es)

[⬆ Inicio](#indice)

----------------------------------------------------------------------
<!-- ------------------------------------------------------ -->
###### Subindice [2]
>[!NOTE] Un lenguaje de programación multiparadigma
> Es aquel que permite usar más de un paradigma de programación dentro de un mismo programa. Esto le da más flexibilidad y versatilidad al programador.<br><br> Un paradigma de programación es un estilo o forma de programar, es decir, un enfoque para resolver problemas. Algunos paradigmas de programación son: 
>* Orientado a objetos, 
>* Funcional, 
>* Imperativo, 
>* Declarativo, 
>* Lógico, 
>* Concurrente, 
>* Por restricciones.
>
>Ventajas de los lenguajes multiparadigma :
>
> * Permiten resolver un mayor rango de problemas
> * Ayudan a conseguir las soluciones más eficientes
> * Facilitan el aprendizaje de nuevos algoritmos
> * Aumentan la rentabilidad de los proyectos TI


[↩ Regresar](#qué-es)

[⬆ Inicio](#indice)

----------------------------------------------------------------------
<!-- ------------------------------------------------------ -->
###### Subindice [3]
>[!NOTE] Esto es el ejemplo correspondiente al  operador &nbsp;<code>===</code>&nbsp; 'Identico a '
>``` swift
>   class Persona 
>   {
>    var nombre: String
>    init(nombre: String) 
>       {
>           self.nombre = nombre
>       }
>   }
>
>   let persona1 = Persona(nombre: "Ana")
>   let persona2 = persona1
>   let persona3 = Persona(nombre: "Ana")
>
>   print(persona1 === persona2) // true
>   print(persona1 === persona3) // false
>```
>Esto es ya que este operador verifica si dos referencias de objetos apuntan a la misma instancia en memoria. 

[↩ Regresar](#comparación)

[⬆ Inicio](#indice)

----------------------------------------------------------------------
<!-- ------------------------------------------------------ -->
###### Subindice [4]
>[!NOTE] Esto es el ejemplo correspondiente al  operador &nbsp;<code>!==</code>&nbsp; 'NO Identico a '
> Para este ejemplo se toma la clase declarada en el <b><small>[Subindice 4](#subindice-4)</small></b> 
>``` swift
>   print(persona1 !== persona3) // true
>```
>Esto es ya que determina si dos referencias de objetos no apuntan a la misma instancia.​


[↩ Regresar](#comparación)

[⬆ Inicio](#indice)

----------------------------------------------------------------------
<!-- ------------------------------------------------------ -->
###### Subindice [5]
>[!NOTE] Esto es el ejemplo correspondiente al  operador &nbsp;<code> ~= </code>&nbsp; 'Coincidencia de patrones'
>Devuelve un valor booleano que indica si dos argumentos coinciden por igualdad de valor<br>
>``` swift
>    func ~= <T>(a: T, b: T) -> Bool where T : Equatable
>``` 
><br>*Equatable => Igualable, Equivalente
>
>```swift
>   func esDiaLaboral(diaSemana: Int) -> Bool 
>    {
>        return 1...5 ~= diaSemana
>    }
>
>    let dia = 1
>    if esDiaLaboral(diaSemana: dia) 
>    {
>        print("Es un día laboral")
>    }else
>        {
>            print("Es fin de semana")
>        }
>```
> En este ejemplo el ```dia``` usa este operador para probar si el ```diaSemana```  es igual a algún valor del rango <br>



[↩ Regresar](#comparación)

[⬆ Inicio](#indice)

----------------------------------------------------------------------
<!-- ------------------------------------------------------ -->
###### Subindice [6]
>[!NOTE] Ejemplo correspondiente al operador &nbsp;<code> ?. </code>&nbsp; 'Encadenamiento opcional'
>
>``` swift
>   class Persona 
>    {
>        var nombre: String
>        init(nombre: String) 
>        {
>            self.nombre = nombre
>        }
>    }
>
>    var persona: Persona? = Persona(nombre: "Ana")
>    print(persona?.nombre) // Imprime "Optional(\"Ana\")"
>
>```
>En este caso, ```persona?.nombre``` accede a la propiedad nombre solo si persona no es ```nil```. Si persona fuera ```nil```, la expresión completa devolvería ```nil```.​

>[!NOTE] <code>?.</code>(Encadenamiento Opcional) != <code>?</code>(Variable Opcional)




[↩ Regresar](#valores-opcionales-y-flujo-del-programa)

[⬆ Inicio](#indice)

----------------------------------------------------------------------
<!-- ------------------------------------------------------ -->
###### Subindice []
>[!NOTE] 
>
[↩ Regresar]()

[⬆ Inicio](#indice)
