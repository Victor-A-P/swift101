import Foundation


// MARK: ++++++++++++++++++++++++++++++ COMENTARIOS ++++++++++++++++++++++++++++++
/*
  Multilinas comentarios
*/

// Palabras reservadas
//MARK: - Esto es un comentario MARK -> Para un delimitar un bloque concreto de código que realiza una tarea concreta
//TODO: - Esto es un TODO -> Para tareas que se van a llevar a cabo
//FIXME: - Hay algo incorrecto que es necesario arreglar

#warning("Ejemplo de un warning creado por nosotros")

// MARK: ++++++++++++++++++++++++++++++ CONST & VARS ++++++++++++++++++++++++++++++

let pi: Double = 3.14;// Constante explicita
var name = "Swift";//Variable Implicita por inferencia

var var1 = 1;
var var2 = -2;

var rest = abs(var1)-abs(var2);

//MARK: ++++ IMPRIMIENDO ++
/*
    \n Salto de línea
    \b Retroceso
    \t Tabulación horizontal
    \v Tabulación vertical
    \\ Contrabarra
    \f Salto de página
    \' Apóstrofe
    \" Comillas dobles
    \0 Fin de una cadena de caracteres
*/

// MARK: ++++++++++++++++++++++++++++++ ARRAYS +++++++++++++++++++++++++++++++++
// Lista de datos ordenados(por un indice)
var arr1 :Array<Int> = [12,32,43,34,55,21,42];


arr1[3];
arr1.sort();
arr1.reverse();
arr1.sorted(by: > );
arr1.sorted();
arr1.count;
arr1.last;
arr1.first;
arr1.append(32);
arr1.append(12);
arr1.insert(13, at:1 );
var i = 0;
for element in arr1
{
    print("[ \(i) ]: \(element)");
    
    if( element == 12)
    {
       print("En este indice[ \(i) ] hay un valor \(element)")
    }
    i += 1
}

for number in arr1 where number == 12
{
    print("!Here")
}

arr1.contains(12)
// MARK: ++++++++++++++++++++++++++ SETS ++++++++++++++++++++++++++++++++++
// Una colección de elementos, NO ordenada, que no puede tener valores duplicados, teniendo como ventaja una mejor velocidad y desmpeño
// var ages: Set<Int> = [];

var agesSet = Set(arr1);
print(agesSet);

// HASHABLE -> Un valor Hash('Hash value') es un numéro que representa de manera única el contenido de un objeto(como un puntero a la dirección de memoria donde esta almacenado el elemento), esto gracias al protocolo 'Hashable'; que un tipo genere un valor hash es esencial para su uso en colecciones como Set y Diccionary

// MARK: ++++++++++++++++++++++++++ DICTIONARY ++++++++++++++++++++++++++
// Es una colección de valores que son `clave:valor` es decir 'duplas'


let device: [String: String] =
[
    "phone":"iphoneX",
    "laptop":"mac2010",
    "tablet":"air13inch"
];

device["phone"];
// MARK: ++++++++++++++++++++++++++ ENUM ++++++++++++++++++++++++++
// Una colección de valores que tienen alguna relación entre ellos

enum Direcciones
{
    case Norte
    case Sur
    case Este
    case Oeste
}

enum DiaSemana
{
    case Lunes,Martes,Miercoles,Jueves,Viernes,Sabado,Domingo
}

// RAW VALUE cuando le asignas un valor con '=' a cada case ejemplo

enum Phone: String
{
    case iPhone11Pro = "This will be my next phone."
    case iPhoneSE = "I dislike this phone size. It makes design hard."
    case pixel = "Hardware is great. Android is eewwwww"
    case nokia = "Can't be broken. Classic."
}

func getSeansOpinion(on phone: Phone)
{
    print (phone.rawValue)
}

//Principalmente para evitar valores, al aceptar valores de un string
getSeansOpinion (on: .iPhoneSE)
getSeansOpinion (on: .pixel)

// MARK: ++++++++++++++++++++++++++ FUNCTIONS ++++++++++++++++++++++++++
/*:
```swift
     func functionName(argumentLabel parameterName: ArgumentType) -> ReturnType
     {
         ...
     }
 
    functionNAme();
 ```
*/

// ++++ FUNCIONES DE ORDEN SUPERIOR

// Toma una función como un parametro
// ⬇️ Aqui básicamente se esta diciendo que al mandar a llamar el 'ArgumentLabel' es operacion que llamará a la operación que se desea realizar, que necesita de un Int y te devuelve un Int, el siguiente parametro será un Int que su 'ArgumentLabel' es a_numero que es al número que se le aplicará la funcion anteriormente llamada
func aplicarTresVeces(operación funcion: (Int) -> Int, a_numero valor: Int) -> Int
   {
       return funcion(funcion(funcion(valor)))// se llama 3 veces la función => +1+1+1(valor)
   }

func incrementar(_ x: Int) -> Int
    {
       return x + 1
    }

   let resultado = aplicarTresVeces(operación: incrementar, a_numero: 5)
   print(resultado) // Imprime: 8 ==> 5 + 1+1+1



// MARK: ++++++++++++++++++++++++++ Clases ++++++++++++++++++++++++++

class Developer
{
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init() {} // Optional inicializer 'Empty' inicializer
    init(name: String, jobTitle:String, yearsExp:Int)
    {
        self.name = name //En verde estan las propiedades de desarrollo y en blanco los argumentos que se pasan al inicializar, por ello se esta especificando que lo que se pase en los argumentos debe de ser asignado en el parametro de la clase
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    func speakName()
    {
        guard let name = self.name else{return}
        
        print("El nombre es: \(name)")
    }
}


let Alex = Developer(name: "Alex", jobTitle: "iOS Developer", yearsExp: 5)
Alex.speakName()

// ++++++++++++++++++++++++++ HERENCIAS ++++++++++++++++++++++++++
class iOSDeveloper: Developer
{
    var favoriteFramework: String?
    
    func speakFavoriteFramework()
    {
        guard let frameFavorito = self.favoriteFramework else {return}
        
        print("El framework favorito con el que he trabajado es: \(frameFavorito)")
    }
    
    override func speakName()
    {
        guard let nombre = self.name else{return}
        guard let trabajo = self.jobTitle else{return}
        
        print("Mi name is: \(nombre) - and work in: \(trabajo)")
    }
    
}


let alex1:iOSDeveloper = iOSDeveloper(name: "Alex1", jobTitle: "prueba", yearsExp: 12);

alex1.speakName();
alex1.favoriteFramework = "SwiftUI";
alex1.speakFavoriteFramework();

// MARK: ++++++++++++++++++++++++++ STRUCTS ++++++++++++++++++++++++++

// VALUE TYPES
//      VS
// REFERENCE TYPES


struct Dev
{
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
}

// Los Struct ya te proporcionan con un 'member wise initializer'

var alexDev = Dev(name: "AlexDev", jobTitle: "iOS Developer", yearsExp: 5)
print(alexDev.name!)
var dev2 = alexDev
dev2.name = "Otro"

print(alexDev.name!)
print(dev2.name!)

// MARK: ++++++++++++++++++++++++++ EXTENSION ++++++++++++++++++++++++++

//Permite agregar nuevas funcionalidades a una clase, estructura, enumeración o protocolo existente, sin modificar su implementación original. Esto es especialmente útil cuando no tienes acceso al código fuente original o deseas mantener tu código organizado y modular.


extension Date {
    func agregarDias(_ dias: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: dias, to: self)!
    }
}

//Ahora todas las fechas nuevas que se generen podrán hacer uso de esta función
let hoy = Date()
let proximaSemana = hoy.agregarDias(7)
print(proximaSemana)

print(proximaSemana.agregarDias(3))


extension String
{
    func removeWhiteSpaces() -> String
    {
        return components(separatedBy: .whitespaces).joined()
    }
    //Elimina cualquier espacio de una cadena y te la regresa sin estos
}
let texto = "  H o l a  m u n d o  "

print(texto.removeWhiteSpaces()) // Imprime "Hola mundo"


// MARK: +++++++++++++++++++++++ Reto FIZZ BUZZ +++++++++++++++++++++++++++++++++

func fizzBuzz () -> () {
    var count = 1
    var serie = ""
    for i in 1 ... 100
    {
        if (i % 3 == 0 && i % 5 == 0)
        {
          serie += " FIZZBUZZ![\(i)] "
        } else
            {
              if (i % 3 == 0 && i % 5 != 0)
                {
                  serie += " FIZZ[\(i)] "
                } else
                    {
                        if (i % 3 != 0 && i % 5 == 0)
                        {
                            serie += " BUZZ[\(i)] "
                        } else
                            {
                                serie += " \(i) "
                            }
                }
            }
        
            if count == 10
            {
                print("\(serie)")
                serie = ""
                count = 0
            }
       
        count += 1;
    }
}

fizzBuzz();
