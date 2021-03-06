//
//  DetailViewController.swift
//  menloHacksProject
//
//  Created by Nolan Jimenez and Shannon Shih on 4/17/16.
//  Copyright © 2016 Nolan. All rights reserved.
//

import UIKit
import PKHUD
//import PureLayout

class DetailViewController: UIViewController {
    
    var myLocalArray: Test?
    var objectArray: [Test]?
    var frameArray: [CGRect]?
    var currentTest = 0;
    var currentQuestion = 0;
    @IBOutlet var detailDescriptionLabel: UILabel!
    
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
            This array holds all of the questions for the project. The way the list is 
            organized is by
    */
        objectArray = [Test(
            testName: "Test 1",
            questions: [
                Question(
                    questionText: "Usted puede manejar fuera de una carretera pavimentada para rebasar a otro vehÃ­culo:",
                    answers: [
                        
                        Answer(
                            answer: "Bajo ninguna circunstancia.", isCorrect: true),
                        Answer(
                            answer: "Si la orilla es lo suficientemente ancha para que su vehÃ­culo pase.", isCorrect: false),
                        Answer(
                            answer: "Si el vehÃ­culo delante de usted estÃ¡ dando vuelta a la izquierda.", isCorrect: false)]),
                
                Question(
                    questionText: "Usted se acerca a un cruce de tren sin dispositivos de advertencia y no puede ver a 400 pies de distancia a lo largo de las vÃ­as en una direcciÃ³n. El lÃ­mite de velocidad es:",
                    answers: [
                        
                        Answer(
                            answer: "15 millas por hora", isCorrect: true),
                        Answer(
                            answer: "20 millas por hora", isCorrect: false),
                        Answer(
                            answer: "25 millas por hora", isCorrect: false)]),
                
                Question(
                    questionText: "Al estacionar su vehÃ­culo paralelo al borde de la acera (banqueta) en una calle nivelada:",
                    answers: [
                        
                        Answer(
                            answer: "Las ruedas deben estar a una distancia mÃ¡xima de 18 pulgadas del borde de la acera (banqueta).", isCorrect: true),
                        Answer(
                            answer: "Las ruedas delanteras deben estar giradas hacia la calle.", isCorrect: false),
                        Answer(
                            answer: "Una de las ruedas traseras debe tocar el borde de la acera.", isCorrect: false)]),
                
                Question(
                    questionText: "Al incorporarse al trÃ¡fico de la autopista, usted deberÃ­a manejar:",
                    answers: [
                        
                        Answer(
                            answer: "A la velocidad o casi a la misma velocidad que el trÃ¡fico en la autopista.", isCorrect: true),
                        Answer(
                            answer: "5 o 10 millas por hora (mph) mÃ¡s despacio que el trÃ¡fico en la autopista.", isCorrect: false),
                        Answer(
                            answer: "Al lÃ­mite de velocidad seÃ±alado para el trÃ¡fico en la autopista.", isCorrect: false)]),
                
                Question(
                    questionText: "Al manejar cuando hay neblina, usted debe utilizar:",
                    answers: [
                        
                        Answer(
                            answer: "Las luces bajas.", isCorrect: true),
                        Answer(
                            answer: "Solamente las luces para neblina.", isCorrect: false),
                        Answer(
                            answer: "Las luces altas.", isCorrect: false)]),
                
                Question(
                    questionText: "Un borde de acera (banqueta) pintado de blanco significa:",
                    answers: [
                        
                        Answer(
                            answer: "Zona exclusiva para el ascenso/descenso de pasajeros o para servicio de correo.", isCorrect: true),
                        Answer(
                            answer: "Zona para cargar/descargar o ascenso/descenso de pasajeros.", isCorrect: false),
                        Answer(
                            answer: "Zona exclusiva para cargar/descargar.", isCorrect: false)]),
                
                Question(
                    questionText: "Un autobÃºs escolar se detiene delante de usted con las luces rojas intermitentes encendidas. Usted debe:",
                    answers: [
                        
                        Answer(
                            answer: "Parar hasta que las luces dejen de estar intermitentes.", isCorrect: true),
                        Answer(
                            answer: "Parar, luego proseguir cuando crea que todos los niÃ±os hayan bajado del autobÃºs.", isCorrect: false),
                        Answer(
                            answer: "Reducir la velocidad a 25 millas por hora (mph) y pasar con cautela.", isCorrect: false)]),
                
                Question(
                    questionText: "La ley de velocidad bÃ¡sica de California estipula:",
                    answers: [
                        
                        Answer(
                            answer: "Nunca se debe manejar mÃ¡s rÃ¡pido de lo que sea seguro para las condiciones existentes.", isCorrect: true),
                        Answer(
                            answer: "Nunca se debe manejar mÃ¡s rÃ¡pido que la velocidad mÃ¡xima indicada.", isCorrect: false),
                        Answer(
                            answer: "La velocidad mÃ¡xima en California es 70 millas por hora (mph) en algunas autopistas.", isCorrect: false)]),
                
                Question(
                    questionText: "Usted acaba de vender su vehÃ­culo. Debe avisar al DMV en un plazo de _____ dÃ­as.",
                    answers: [
                        
                        Answer(
                            answer: "5", isCorrect: true),
                        Answer(
                            answer: "10", isCorrect: false),
                        Answer(
                            answer: "15", isCorrect: false)]),
                
                Question(
                    questionText: "Para evitar maniobras de Ãºltimo momento, usted deberÃ­a fijarse en el tramo de la carretera mÃ¡s adelante por donde su vehÃ­culo circularÃ¡ en aproximadamente:",
                    answers: [
                        
                        Answer(
                            answer: "10 a 15 segundos", isCorrect: true),
                        Answer(
                            answer: "5 a 10 segundos", isCorrect: false),
                        Answer(
                            answer: "15 a 20 segundos", isCorrect: false)])
            ]
            ),
                       Test(
                        testName: "Test 2",
                        questions: [
                            Question(
                                questionText: "Usted estÃ¡ a punto de dar vuelta a la izquierda. Tiene que poner la luz direccional continuamente durante los Ãºltimos _____ pies antes de dar vuelta.",
                                answers: [
                                    
                                    Answer(
                                        answer: "SeÃ±alice 100 pies antes de dar vuelta.", isCorrect: true),
                                    Answer(
                                        answer: "SeÃ±alice 50 pies antes de dar vuelta.", isCorrect: false),
                                    Answer(
                                        answer: "SeÃ±alice 75 pies antes de dar vuelta.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿CuÃ¡l de los siguientes enunciados sobre puntos ciegos (Ã¡ngulos muertos) es cierto?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Los camiones grandes tienen puntos ciegos (Ã¡ngulos muertos) mÃ¡s amplios que la mayorÃ­a de los vehÃ­culos de pasajeros.", isCorrect: true),
                                    Answer(
                                        answer: "Se eliminan si el vehÃ­culo tiene un espejo exterior en cada lado.", isCorrect: false),
                                    Answer(
                                        answer: "Los puntos ciegos (Ã¡ngulos muertos) pueden revisarse mirando por el espejo retrovisor.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted se ve involucrado en un choque de menor grado contra un vehÃ­culo estacionado y no puede encontrar al dueÃ±o. Tiene que:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Las dos otras respuestas.", isCorrect: true),
                                    Answer(
                                        answer: "Dejar una nota en el vehÃ­culo.", isCorrect: false),
                                    Answer(
                                        answer: "Reportar el accidente sin demora alguna a la policÃ­a de la ciudad o a la patrulla CHP en Ã¡reas no incorporadas.", isCorrect: false)]),
                            
                            Question(
                                questionText: "A menos que se indique lo contrario, el lÃ­mite de velocidad en una zona residencial es de _____ .",
                                answers: [
                                    
                                    Answer(
                                        answer: "25 mph", isCorrect: true),
                                    Answer(
                                        answer: "20 mph", isCorrect: false),
                                    Answer(
                                        answer: "30 mph", isCorrect: false)]),
                            
                            Question(
                                questionText: "Legalmente, usted puede obstruir una intersecciÃ³n:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Bajo ninguna circunstancia.", isCorrect: true),
                                    Answer(
                                        answer: "Si entra a la intersecciÃ³n cuando el semÃ¡foro estÃ¡ en luz verde.", isCorrect: false),
                                    Answer(
                                        answer: "Durante las horas pico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Al estacionarse cuesta arriba en una calle de doble sentido donde no hay borde de acera (banqueta) sus ruedas delanteras deben:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Girarse a la derecha (en sentido opuesto a la calle).", isCorrect: true),
                                    Answer(
                                        answer: "Girarse a la izquierda (hacia la calle", isCorrect: false),
                                    Answer(
                                        answer: "Paralelas al pavimento.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Con una licencia de manejar Clase C, una persona puede manejar:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Un vehÃ­culo de tres ejes si el peso bruto del vehÃ­culo es menor de 6,000 libras.", isCorrect: true),
                                    Answer(
                                        answer: "Cualquier vehÃ­culo de tres ejes sin importar el peso.", isCorrect: false),
                                    Answer(
                                        answer: "Un vehÃ­culo con dos remolques.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Para dar vuelta a la izquierda desde una calle de carriles mÃºltiples de un solo sentido hacia otra calle de un solo sentido, usted debe comenzar su vuelta desde:",
                                answers: [
                                    
                                    Answer(
                                        answer: "El carril mÃ¡s cercano al borde izquierdo de la acera (banqueta).", isCorrect: true),
                                    Answer(
                                        answer: "Cualquier carril (siempre y cuando sea seguro).", isCorrect: false),
                                    Answer(
                                        answer: "El carril central de la calle.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si usted se ve involucrado en un choque, se le exige completar y presentar un reporte escrito (SR 1) al DMV:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Si hay daÃ±os materiales mayores a $750 o si resultan lesiones.", isCorrect: true),
                                    Answer(
                                        answer: "Solamente si usted o el otro conductor resulta lesionado.", isCorrect: false),
                                    Answer(
                                        answer: "Solo si usted tuvo la culpa.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Las carreteras estÃ¡n mÃ¡s resbaladizas:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Durante las primeras lluvias despuÃ©s de una temporada de sequÃ­a.", isCorrect: true),
                                    Answer(
                                        answer: "Durante una lluvia copiosa.", isCorrect: false),
                                    Answer(
                                        answer: "DespuÃ©s de haber llovido por un rato.", isCorrect: false)])
                        ]
            ),
                       
                       Test(
                        testName: "Test 3",
                        questions: [
                            Question(
                                questionText: "Usted no puede estacionar su vehÃ­culo:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Junto a un borde de acera (banqueta) pintado de rojo.", isCorrect: true),
                                    Answer(
                                        answer: "En la orilla de la carretera en una emergencia.", isCorrect: false),
                                    Answer(
                                        answer: "A una distancia no mayor de 100 pies de una escuela primaria.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Tiene que avisar al DMV en un plazo de 5 dÃ­as si:",
                                answers: [
                                    
                                    Answer(
                                        answer: "VendiÃ³ o traspasÃ³ su vehÃ­culo.", isCorrect: true),
                                    Answer(
                                        answer: "Su vehÃ­culo no pasa la inspecciÃ³n contra la contaminaciÃ³n ambiental.", isCorrect: false),
                                    Answer(
                                        answer: "Obtiene una nueva prescripciÃ³n para lentes de aumento o de contacto.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Dos pares de rayas amarillas dobles y continuas que estÃ©n separados por dos o mÃ¡s pies de distancia:",
                                answers: [
                                    
                                    Answer(
                                        answer: "No pueden cruzarse por ninguna razÃ³n.", isCorrect: true),
                                    Answer(
                                        answer: "Pueden cruzarse para entrar o salir de una entrada particular.", isCorrect: false),
                                    Answer(
                                        answer: "Deben tratarse como un carril separado", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted quiere dar vuelta a la derecha en la prÃ³xima intersecciÃ³n. Debe disminuir su velocidad y:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Poner la luz direccional 100 pies antes de dar vuelta.", isCorrect: true),
                                    Answer(
                                        answer: "Desplazarse hacia el lado izquierdo del carril.", isCorrect: false),
                                    Answer(
                                        answer: "Evitar manejar en el carril para bicicletas (ciclovÃ­a).", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted va manejando en una autopista cuyo lÃ­mite de velocidad es 65 millas por hora (mph). El trÃ¡fico va a 70 mph. Usted puede manejar legalmente a:",
                                answers: [
                                    
                                    Answer(
                                        answer: "A un mÃ¡ximo de 65 mph.", isCorrect: true),
                                    Answer(
                                        answer: "75 mph o mÃ¡s rÃ¡pido para ir a la misma velocidad que el trÃ¡fico.", isCorrect: false),
                                    Answer(
                                        answer: "Entre 65 mph y 70 mph.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Es ilegal estacionar su vehÃ­culo:",
                                answers: [
                                    
                                    Answer(
                                        answer: "En un cruce de peatones que no estÃ© marcado.", isCorrect: true),
                                    Answer(
                                        answer: "A una distancia mÃ¡xima de tres pies de una entrada particular.", isCorrect: false),
                                    Answer(
                                        answer: "En un carril para bicicletas (ciclovÃ­a).", isCorrect: false)]),
                            
                            Question(
                                questionText: "La medida mÃ¡s segura que usted puede tomar con respecto al uso de telÃ©fonos celulares al manejar es:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Utilizar aparatos de manos libres para que pueda mantener ambas manos en el volante.", isCorrect: true),
                                    Answer(
                                        answer: "Mantener su telÃ©fono al alcance para no tener que quitar su vista del camino.", isCorrect: false),
                                    Answer(
                                        answer: "Mirar el nÃºmero antes de contestar una llamada.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si el semÃ¡foro estÃ¡ en luz verde para usted, pero el trÃ¡fico estÃ¡ obstruyendo la intersecciÃ³n, debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Quedarse fuera de la intersecciÃ³n hasta que el trÃ¡fico se despeje.", isCorrect: true),
                                    Answer(
                                        answer: "Entrar a la intersecciÃ³n y esperar a que el trÃ¡fico se despeje.", isCorrect: false),
                                    Answer(
                                        answer: "Cambiar de carril y tratar de pasar alrededor del trÃ¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted se prepara para dar vuelta a la derecha. Debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Disminuir su velocidad o parar si es necesario, y luego dar vuelta.", isCorrect: true),
                                    Answer(
                                        answer: "Poner las luces direccionales y dar vuelta inmediatamente.", isCorrect: false),
                                    Answer(
                                        answer: "Parar antes de cambiarse al carril derecho y dejar pasar al resto del trÃ¡fico primero.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted tiene que obedecer las instrucciones de los guardias de cruces escolares:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Siempre.", isCorrect: true),
                                    Answer(
                                        answer: "Solo durante horarios escolares.", isCorrect: false),
                                    Answer(
                                        answer: "A menos que no vea niÃ±os presentes.", isCorrect: false)])
                        ]
            ),
                       
                       Test(
                        testName: "Test 4",
                        questions: [
                            Question(
                                questionText: "En un dÃ­a muy ventoso, usted va manejando y un nubarrÃ³n de polvo en la autopista reduce su visibilidad. Debe disminuir su velocidad y encender:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Las luces delanteras.", isCorrect: true),
                                    Answer(
                                        answer: "Las luces interiores.", isCorrect: false),
                                    Answer(
                                        answer: "Las luces de estacionamiento.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si usted piensa rebasar a otro vehÃ­culo:",
                                answers: [
                                    
                                    Answer(
                                        answer: "No debe asumir que el otro conductor le harÃ¡ espacio para que vuelva al carril.", isCorrect: true),
                                    Answer(
                                        answer: "Debe asumir que el otro conductor le permitirÃ¡ rebasar si usted pone su luz direccional.", isCorrect: false),
                                    Answer(
                                        answer: "Debe asumir que el otro conductor mantendrÃ¡ una velocidad constante.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted maneja en una autopista cuyo lÃ­mite de velocidad es de 65 millas por hora (mph). La mayorÃ­a de los otros conductores van a 70 mph o mÃ¡s. Legalmente usted puede manejar:",
                                answers: [
                                    
                                    Answer(
                                        answer: "A un mÃ¡ximo de 65 mph.", isCorrect: true),
                                    Answer(
                                        answer: "A 70 mph o mÃ¡s para ir a la misma velocidad que el trÃ¡fico.", isCorrect: false),
                                    Answer(
                                        answer: "Entre 65 y 70 mph.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si usted maneja mÃ¡s rÃ¡pido que otros vehÃ­culos en una carretera de un carril en cada direcciÃ³n y constantemente rebasa a los otros vehÃ­culos, usted:",
                                answers: [
                                    
                                    Answer(
                                        answer: "AumentarÃ¡ las probabilidades de involucrarse en un accidente.", isCorrect: true),
                                    Answer(
                                        answer: "LlegarÃ¡ a su destino mÃ¡s pronto y con mayor seguridad.", isCorrect: false),
                                    Answer(
                                        answer: "AyudarÃ¡ a prevenir la congestiÃ³n de trÃ¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿CuÃ¡l de estos vehÃ­culos siempre debe parar antes de cruzar las vÃ­as del tren?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Camiones cisterna con carteles de materiales peligrosos.", isCorrect: true),
                                    Answer(
                                        answer: "Casas rodantes o camionetas tipo pickup que lleven un remolque para bote.", isCorrect: false),
                                    Answer(
                                        answer: "Cualquier vehÃ­culo de 3 ejes o mÃ¡s o que pese mÃ¡s de 4,000 libras.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted maneja en una calle de un solo sentido. Usted puede dar vuelta a la izquierda hacia otra calle de un solo sentido solamente si:",
                                answers: [
                                    
                                    Answer(
                                        answer: "El trÃ¡fico de la calle circula a la izquierda.", isCorrect: true),
                                    Answer(
                                        answer: "Una seÃ±al lo permite.", isCorrect: false),
                                    Answer(
                                        answer: "El trÃ¡fico de la calle circula a la derecha.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Un camiÃ³n grande va delante de usted y va a dar vuelta a la derecha hacia una calle de dos carriles en cada direcciÃ³n. El camiÃ³n:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Puede necesitar dar una vuelta amplia para poder completar la vuelta a la derecha.", isCorrect: true),
                                    Answer(
                                        answer: "Puede terminar la vuelta en cualquiera de los dos carriles.", isCorrect: false),
                                    Answer(
                                        answer: "Debe permanecer en el carril derecho mientras da vuelta.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Se puede cruzar una raya amarilla doble para rebasar a otro vehÃ­culo si la raya amarilla:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Que estÃ¡ de su lado de la carretera es discontinua.", isCorrect: true),
                                    Answer(
                                        answer: "Que estÃ¡ del otro lado de la carretera es continua.", isCorrect: false),
                                    Answer(
                                        answer: "QuÃ© estÃ¡ del otro lado de la carretera es discontinua.", isCorrect: false)]),
                            
                            Question(
                                questionText: "En intersecciones, cruces peatonales y cruces de tren usted siempre debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Mirar a los lados del vehÃ­culo para ver lo que se acerca.", isCorrect: true),
                                    Answer(
                                        answer: "Parar, escuchar y proseguir con precauciÃ³n.", isCorrect: false),
                                    Answer(
                                        answer: "Pasar lentamente a los vehÃ­culos que parezcan estar parados sin ninguna razÃ³n.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted maneja a la defensiva cuando:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Se mantiene atento para estar pendiente de posibles peligros.", isCorrect: true),
                                    Answer(
                                        answer: "Deja siempre una distancia equivalente al largo de un vehÃ­culo entre usted y el de adelante.", isCorrect: false),
                                    Answer(
                                        answer: "Solo mira al vehÃ­culo delante de usted mientras maneja.", isCorrect: false)])
                        ]
            ),
                       
                       Test(
                        testName: "Test 5",
                        questions: [
                            Question(
                                questionText: "Usted maneja en la autopista. El vehÃ­culo delante de usted es un camiÃ³n grande, debe circular:",
                                answers: [
                                    
                                    Answer(
                                        answer: "DetrÃ¡s del camiÃ³n a una distancia mucho mayor de la que mantendrÃ­a si fuera un vehÃ­culo de pasajeros.", isCorrect: true),
                                    Answer(
                                        answer: "Muy cerca detrÃ¡s del camiÃ³n cuando haga mal tiempo porque el camionero tiene mayor visibilidad hacia adelante.", isCorrect: false),
                                    Answer(
                                        answer: "DetrÃ¡s del camiÃ³n a una distancia no mayor de lo que mide el largo de un vehÃ­culo para que el camionero pueda verlo.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Todas las actividades siguientes son peligrosas hacer mientras maneja. Â¿CuÃ¡l ademÃ¡s es ilegal?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Escuchar mÃºsica con audÃ­fonos que cubran ambos oÃ­dos.", isCorrect: true),
                                    Answer(
                                        answer: "Ajustar los espejos exteriores.", isCorrect: false),
                                    Answer(
                                        answer: "Transportar un animal que vaya suelto dentro del vehÃ­culo.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Siempre pare antes de cruzar las vÃ­as del tren si:",
                                answers: [
                                    
                                    Answer(
                                        answer: "No hay espacio al otro lado de las vÃ­as para poder atravesarlas completamente.", isCorrect: true),
                                    Answer(
                                        answer: "El cruce de tren estÃ¡ ubicado en una ciudad o pueblo que tiene trÃ¡nsito frecuente de trenes.", isCorrect: false),
                                    Answer(
                                        answer: "Usted transporta a dos o mÃ¡s niÃ±os en un vehÃ­culo de pasajeros.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Cuando usted sigue demasiado cerca a otros conductores (maneja cerca de la defensa [parachoques] trasera):",
                                answers: [
                                    
                                    Answer(
                                        answer: "Usted puede frustrar a los otros conductores y hacerlos enojar.", isCorrect: true),
                                    Answer(
                                        answer: "Sus acciones no pueden resultar en una infracciÃ³n de trÃ¡fico.", isCorrect: false),
                                    Answer(
                                        answer: "Ayuda a reducir el congestionamiento de trÃ¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿Debe usted siempre manejar mÃ¡s despacio que el resto del trÃ¡fico?",
                                answers: [
                                    
                                    Answer(
                                        answer: "No, porque puede obstruir el trÃ¡fico si maneja demasiado despacio.", isCorrect: true),
                                    Answer(
                                        answer: "SÃ­, es una buena tÃ©cnica de manejo defensivo.", isCorrect: false),
                                    Answer(
                                        answer: "SÃ­, siempre es mÃ¡s seguro que manejar mÃ¡s rÃ¡pido que el resto del trÃ¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted ve un obrero con banderÃ­n en una zona de obras mÃ¡s adelante en la carretera. Debe obedecer sus instrucciones:",
                                answers: [
                                    
                                    Answer(
                                        answer: "En todo momento.", isCorrect: true),
                                    Answer(
                                        answer: "Solo si ve conos anaranjados mÃ¡s adelante en el camino.", isCorrect: false),
                                    Answer(
                                        answer: "A menos que contradigan a otros letreros, semÃ¡foros o leyes existentes.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿CuÃ¡ndo se puede manejar en un carril para bicicletas (ciclovÃ­a)?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Cuando usted se encuentre a una distancia no mayor a 200 pies de una intersecciÃ³n donde usted piensa dar vuelta a la derecha.", isCorrect: true),
                                    Answer(
                                        answer: "En horas pico y cuando no vayan ciclistas por el carril de bicicletas (ciclovÃ­a).", isCorrect: false),
                                    Answer(
                                        answer: "Cuando usted quiera rebasar a un automovilista que vaya delante de usted y vaya a dar vuelta a la derecha.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted ve un semÃ¡foro en luz amarilla intermitente en la prÃ³xima intersecciÃ³n. La luz amarilla intermitente significa:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Disminuir la velocidad y atravesar la intersecciÃ³n con mucha precauciÃ³n.", isCorrect: true),
                                    Answer(
                                        answer: "Parar antes de entrar a la intersecciÃ³n siempre y cuando lo pueda hacer con seguridad.", isCorrect: false),
                                    Answer(
                                        answer: "Parar. Ceda el paso a todo el trÃ¡fico que cruza antes de atravesar la intersecciÃ³n.", isCorrect: false)]),
                            
                            Question(
                                questionText: "No hay cruce peatonal y usted ve que un peatÃ³n cruza su carril mÃ¡s adelante. Usted debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Parar y dejar que el peatÃ³n termine de cruzar la calle.", isCorrect: true),
                                    Answer(
                                        answer: "Hacer contacto visual, luego pasar al peatÃ³n.", isCorrect: false),
                                    Answer(
                                        answer: "Disminuir la velocidad conforme pasa al peatÃ³n.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Una raya amarilla continua junto una raya amarilla discontinua significa que los vehÃ­culos que circulen:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Junto a la raya discontinua pueden pasar.", isCorrect: true),
                                    Answer(
                                        answer: "En ambas direcciones pueden rebasar.", isCorrect: false),
                                    Answer(
                                        answer: "Junto a la raya continua pueden pasar.", isCorrect: false)])
                        ]
            )]
        
        
        self.configureView()
    }
    
    
    func configureView() {
        
//        // Update the user interface for the detail item.
//        //        if let detail = self.detailItem {
//        detailDescriptionLabel.text = objectArray![currentTest].questions[currentQuestion].questionText
//        //        }
//        
        PKHUD.sharedHUD.dimsBackground = true
        
        // Set frameArray Rects
        
        
        let height = UIScreen.mainScreen().bounds.height
        let width = UIScreen.mainScreen().bounds.width
        
        
        let allButtonHeight = height * 0.4;
        let buttonSpacing = allButtonHeight/3;
        
        frameArray = [CGRectMake(width/2-175, height - buttonSpacing - 2*buttonSpacing, 350, 60),CGRectMake(width/2-175, height - buttonSpacing - buttonSpacing, 350, 60),CGRectMake(width/2-175, height - buttonSpacing, 350, 60)]
        
        //        let objectArray = NSUserDefaults.standardUserDefaults().valueForKey("objectArray")
        
        let answers = objectArray![currentTest].questions[currentQuestion].answers
        for index in 0...(answers.count - 1) {
            let option = answers[index]
            MakeButton(option.answer, isCorrect:option.isCorrect)
        }
        //        MakeButton("A", isCorrect:true)
        //        MakeButton("B", isCorrect:false)
        //        MakeButton("C", isCorrect:false)
        //        MakeButton("D", isCorrect:false)
    }
    
    func MakeButton(title: String, isCorrect: Bool) {
        let index = Int(arc4random_uniform(UInt32(frameArray!.count)))
        let button = UIButton(frame:frameArray![index])
        frameArray?.removeAtIndex(index)
        button.backgroundColor = UIColor.blueColor()
        button.setTitle(title, forState: UIControlState.Normal)
        button.titleLabel?.numberOfLines = 3
        button.contentRectForBounds(CGRectMake(10, 10, 340, 50))
        button.showsTouchWhenHighlighted = true;
        //        button.titleLabel?.lineBreakMode = NSLineBreakByWordWrapping;
        view.addSubview(button)
        
        if isCorrect {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CorrectButtonTapped))
            button.addGestureRecognizer(tapGesture)
        } else {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(IncorrectButtonTapped))
            button.addGestureRecognizer(tapGesture)
        }
        button.layer.cornerRadius = 20
        
    }
    
    
    func CorrectButtonTapped(tap: UITapGestureRecognizer) {
        
        //        let alert = UIAlertView(title: "Correct!", message: "Good job!", delegate: self, cancelButtonTitle: "OK bye", otherButtonTitles: "leave me alone")
        //        alert.show()
        
        HUD.flash(.Success, delay: 0.6)
        
        currentQuestion += 1
        self.configureView()
    }
    
    func IncorrectButtonTapped(tap: UITapGestureRecognizer) {
        
        //        let alert = UIAlertView(title: "Incorrect!", message: "Ur Fired!", delegate: self, cancelButtonTitle: "bye", otherButtonTitles: "leave me alone")
        //        alert.show()
        HUD.flash(.Error, delay: 0.6)
    }
    
}
