//
//  MasterViewController.swift
//  menloHacksProject
//
//  Created by Nolan Jimenez and Shannon Shih on 4/17/16.
//  Copyright © 2016 Nolan. All rights reserved.
//

import UIKit
//import PureLayout

class MasterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var objectArray : [Test]?
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        addObjectArray()
        view.needsUpdateConstraints()
    }
    
    func setupSubviews() {
        view.addSubview(myTableView)
    }
    
//    override func updateViewConstraints() {
//        myTableViewConstraints()
//        super.updateViewConstraints()
//    }
//    
//    func myTableViewConstraints() {
//        myTableView.autoCenterinSuperView()
//        myTableView.autoConstrainAttributes(.Height, toAttributes: .Height, ofView: view)
//        myTableView.autoConstrainAttributes(.Width, toAttributes: .Width, ofView: view)
//    }
    
//    var myTableView: UITableView! = {
//        let view = UITableView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.delegate = self
//        view.dataSource = self
//        view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
//        let cellNib = UINib.init(nibName: "MyTableViewCell", bundle: nil)
//        view.registerNib(cellNib, forCellReuseIdentifier: "cellIdentifier")
//        
//        
//        return view
//    }()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectArray!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath) as UITableViewCell
        
        let testName = objectArray![indexPath.row].testName // text shown on tabs
        cell.textLabel?.text = testName
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        performSegueWithIdentifier("niceJobDude", sender: self)
//        let detailViewController = DetailViewController()
//        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func addObjectArray() {
        objectArray = [Test(
            testName: "Exámen 1",
            questions: [
                Question(
                    questionText: "Usted puede manejar fuera de una carretera pavimentada para rebasar a otro vehá­culo:",
                    answers: [
                        
                        Answer(
                            answer: "Bajo ninguna circunstancia.", isCorrect: true),
                        Answer(
                            answer: "Si la orilla es lo suficientemente ancha para que su vehá­culo pase.", isCorrect: false),
                        Answer(
                            answer: "Si el vehá­culo delante de usted está¡ dando vuelta a la izquierda.", isCorrect: false)]),
                
                Question(
                    questionText: "Usted se acerca a un cruce de tren sin dispositivos de advertencia y no puede ver a 400 pies de distancia a lo largo de las vá­as en una direcciá³n. El lá­mite de velocidad es:",
                    answers: [
                        
                        Answer(
                            answer: "15 millas por hora", isCorrect: true),
                        Answer(
                            answer: "20 millas por hora", isCorrect: false),
                        Answer(
                            answer: "25 millas por hora", isCorrect: false)]),
                
                Question(
                    questionText: "Al estacionar su vehá­culo paralelo al borde de la acera (banqueta) en una calle nivelada:",
                    answers: [
                        
                        Answer(
                            answer: "Las ruedas deben estar a una distancia má¡xima de 18 pulgadas del borde de la acera (banqueta).", isCorrect: true),
                        Answer(
                            answer: "Las ruedas delanteras deben estar giradas hacia la calle.", isCorrect: false),
                        Answer(
                            answer: "Una de las ruedas traseras debe tocar el borde de la acera.", isCorrect: false)]),
                
                Question(
                    questionText: "Al incorporarse al trá¡fico de la autopista, usted deberá­a manejar:",
                    answers: [
                        
                        Answer(
                            answer: "A la velocidad o casi a la misma velocidad que el trá¡fico en la autopista.", isCorrect: true),
                        Answer(
                            answer: "5 o 10 millas por hora (mph) má¡s despacio que el trá¡fico en la autopista.", isCorrect: false),
                        Answer(
                            answer: "Al lá­mite de velocidad seá±alado para el trá¡fico en la autopista.", isCorrect: false)]),
                
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
                    questionText: "Un autobús escolar se detiene delante de usted con las luces rojas intermitentes encendidas. Usted debe:",
                    answers: [
                        
                        Answer(
                            answer: "Parar hasta que las luces dejen de estar intermitentes.", isCorrect: true),
                        Answer(
                            answer: "Parar, luego proseguir cuando crea que todos los niá±os hayan bajado del autobús.", isCorrect: false),
                        Answer(
                            answer: "Reducir la velocidad a 25 millas por hora (mph) y pasar con cautela.", isCorrect: false)]),
                
                Question(
                    questionText: "La ley de velocidad bá¡sica de California estipula:",
                    answers: [
                        
                        Answer(
                            answer: "Nunca se debe manejar má¡s rá¡pido de lo que sea seguro para las condiciones existentes.", isCorrect: true),
                        Answer(
                            answer: "Nunca se debe manejar má¡s rá¡pido que la velocidad má¡xima indicada.", isCorrect: false),
                        Answer(
                            answer: "La velocidad má¡xima en California es 70 millas por hora (mph) en algunas autopistas.", isCorrect: false)]),
                
                Question(
                    questionText: "Usted acaba de vender su vehá­culo. Debe avisar al DMV en un plazo de _____ dá­as.",
                    answers: [
                        
                        Answer(
                            answer: "5", isCorrect: true),
                        Answer(
                            answer: "10", isCorrect: false),
                        Answer(
                            answer: "15", isCorrect: false)]),
                
                Question(
                    questionText: "Para evitar maniobras de último momento, usted deberá­a fijarse en el tramo de la carretera má¡s adelante por donde su vehá­culo circulará¡ en aproximadamente:",
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
                        testName: "Exámen 2",
                        questions: [
                            Question(
                                questionText: "Usted está¡ a punto de dar vuelta a la izquierda. Tiene que poner la luz direccional continuamente durante los últimos _____ pies antes de dar vuelta.",
                                answers: [
                                    
                                    Answer(
                                        answer: "Seá±alice 100 pies antes de dar vuelta.", isCorrect: true),
                                    Answer(
                                        answer: "Seá±alice 50 pies antes de dar vuelta.", isCorrect: false),
                                    Answer(
                                        answer: "Seá±alice 75 pies antes de dar vuelta.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿Cuá¡l de los siguientes enunciados sobre puntos ciegos (á¡ngulos muertos) es cierto?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Los camiones grandes tienen puntos ciegos (á¡ngulos muertos) má¡s amplios que la mayorá­a de los vehá­culos de pasajeros.", isCorrect: true),
                                    Answer(
                                        answer: "Se eliminan si el vehá­culo tiene un espejo exterior en cada lado.", isCorrect: false),
                                    Answer(
                                        answer: "Los puntos ciegos (á¡ngulos muertos) pueden revisarse mirando por el espejo retrovisor.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted se ve involucrado en un choque de menor grado contra un vehá­culo estacionado y no puede encontrar al dueá±o. Tiene que:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Las dos otras respuestas.", isCorrect: true),
                                    Answer(
                                        answer: "Dejar una nota en el vehá­culo.", isCorrect: false),
                                    Answer(
                                        answer: "Reportar el accidente sin demora alguna a la policá­a de la ciudad o a la patrulla CHP en á¡reas no incorporadas.", isCorrect: false)]),
                            
                            Question(
                                questionText: "A menos que se indique lo contrario, el lá­mite de velocidad en una zona residencial es de _____ .",
                                answers: [
                                    
                                    Answer(
                                        answer: "25 mph", isCorrect: true),
                                    Answer(
                                        answer: "20 mph", isCorrect: false),
                                    Answer(
                                        answer: "30 mph", isCorrect: false)]),
                            
                            Question(
                                questionText: "Legalmente, usted puede obstruir una intersecciá³n:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Bajo ninguna circunstancia.", isCorrect: true),
                                    Answer(
                                        answer: "Si entra a la intersecciá³n cuando el semá¡foro está¡ en luz verde.", isCorrect: false),
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
                                        answer: "Un vehá­culo de tres ejes si el peso bruto del vehá­culo es menor de 6,000 libras.", isCorrect: true),
                                    Answer(
                                        answer: "Cualquier vehá­culo de tres ejes sin importar el peso.", isCorrect: false),
                                    Answer(
                                        answer: "Un vehá­culo con dos remolques.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Para dar vuelta a la izquierda desde una calle de carriles múltiples de un solo sentido hacia otra calle de un solo sentido, usted debe comenzar su vuelta desde:",
                                answers: [
                                    
                                    Answer(
                                        answer: "El carril má¡s cercano al borde izquierdo de la acera (banqueta).", isCorrect: true),
                                    Answer(
                                        answer: "Cualquier carril (siempre y cuando sea seguro).", isCorrect: false),
                                    Answer(
                                        answer: "El carril central de la calle.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si usted se ve involucrado en un choque, se le exige completar y presentar un reporte escrito (SR 1) al DMV:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Si hay daá±os materiales mayores a $750 o si resultan lesiones.", isCorrect: true),
                                    Answer(
                                        answer: "Solamente si usted o el otro conductor resulta lesionado.", isCorrect: false),
                                    Answer(
                                        answer: "Solo si usted tuvo la culpa.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Las carreteras está¡n má¡s resbaladizas:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Durante las primeras lluvias despuá©s de una temporada de sequá­a.", isCorrect: true),
                                    Answer(
                                        answer: "Durante una lluvia copiosa.", isCorrect: false),
                                    Answer(
                                        answer: "Despuá©s de haber llovido por un rato.", isCorrect: false)])
                        ]
            ),
                       
                       Test(
                        testName: "Exámen 3",
                        questions: [
                            Question(
                                questionText: "Usted no puede estacionar su vehá­culo:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Junto a un borde de acera (banqueta) pintado de rojo.", isCorrect: true),
                                    Answer(
                                        answer: "En la orilla de la carretera en una emergencia.", isCorrect: false),
                                    Answer(
                                        answer: "A una distancia no mayor de 100 pies de una escuela primaria.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Tiene que avisar al DMV en un plazo de 5 dá­as si:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Vendiá³ o traspasá³ su vehá­culo.", isCorrect: true),
                                    Answer(
                                        answer: "Su vehá­culo no pasa la inspecciá³n contra la contaminaciá³n ambiental.", isCorrect: false),
                                    Answer(
                                        answer: "Obtiene una nueva prescripciá³n para lentes de aumento o de contacto.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Dos pares de rayas amarillas dobles y continuas que está©n separados por dos o má¡s pies de distancia:",
                                answers: [
                                    
                                    Answer(
                                        answer: "No pueden cruzarse por ninguna razá³n.", isCorrect: true),
                                    Answer(
                                        answer: "Pueden cruzarse para entrar o salir de una entrada particular.", isCorrect: false),
                                    Answer(
                                        answer: "Deben tratarse como un carril separado", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted quiere dar vuelta a la derecha en la prá³xima intersecciá³n. Debe disminuir su velocidad y:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Poner la luz direccional 100 pies antes de dar vuelta.", isCorrect: true),
                                    Answer(
                                        answer: "Desplazarse hacia el lado izquierdo del carril.", isCorrect: false),
                                    Answer(
                                        answer: "Evitar manejar en el carril para bicicletas (ciclová­a).", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted va manejando en una autopista cuyo lá­mite de velocidad es 65 millas por hora (mph). El trá¡fico va a 70 mph. Usted puede manejar legalmente a:",
                                answers: [
                                    
                                    Answer(
                                        answer: "A un má¡ximo de 65 mph.", isCorrect: true),
                                    Answer(
                                        answer: "75 mph o má¡s rá¡pido para ir a la misma velocidad que el trá¡fico.", isCorrect: false),
                                    Answer(
                                        answer: "Entre 65 mph y 70 mph.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Es ilegal estacionar su vehá­culo:",
                                answers: [
                                    
                                    Answer(
                                        answer: "En un cruce de peatones que no está© marcado.", isCorrect: true),
                                    Answer(
                                        answer: "A una distancia má¡xima de tres pies de una entrada particular.", isCorrect: false),
                                    Answer(
                                        answer: "En un carril para bicicletas (ciclová­a).", isCorrect: false)]),
                            
                            Question(
                                questionText: "La medida má¡s segura que usted puede tomar con respecto al uso de telá©fonos celulares al manejar es:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Utilizar aparatos de manos libres para que pueda mantener ambas manos en el volante.", isCorrect: true),
                                    Answer(
                                        answer: "Mantener su telá©fono al alcance para no tener que quitar su vista del camino.", isCorrect: false),
                                    Answer(
                                        answer: "Mirar el número antes de contestar una llamada.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si el semá¡foro está¡ en luz verde para usted, pero el trá¡fico está¡ obstruyendo la intersecciá³n, debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Quedarse fuera de la intersecciá³n hasta que el trá¡fico se despeje.", isCorrect: true),
                                    Answer(
                                        answer: "Entrar a la intersecciá³n y esperar a que el trá¡fico se despeje.", isCorrect: false),
                                    Answer(
                                        answer: "Cambiar de carril y tratar de pasar alrededor del trá¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted se prepara para dar vuelta a la derecha. Debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Disminuir su velocidad o parar si es necesario, y luego dar vuelta.", isCorrect: true),
                                    Answer(
                                        answer: "Poner las luces direccionales y dar vuelta inmediatamente.", isCorrect: false),
                                    Answer(
                                        answer: "Parar antes de cambiarse al carril derecho y dejar pasar al resto del trá¡fico primero.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted tiene que obedecer las instrucciones de los guardias de cruces escolares:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Siempre.", isCorrect: true),
                                    Answer(
                                        answer: "Solo durante horarios escolares.", isCorrect: false),
                                    Answer(
                                        answer: "A menos que no vea niá±os presentes.", isCorrect: false)])
                        ]
            ),
                       
                       Test(
                        testName: "Exámen 4",
                        questions: [
                            Question(
                                questionText: "En un dá­a muy ventoso, usted va manejando y un nubarrá³n de polvo en la autopista reduce su visibilidad. Debe disminuir su velocidad y encender:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Las luces delanteras.", isCorrect: true),
                                    Answer(
                                        answer: "Las luces interiores.", isCorrect: false),
                                    Answer(
                                        answer: "Las luces de estacionamiento.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si usted piensa rebasar a otro vehá­culo:",
                                answers: [
                                    
                                    Answer(
                                        answer: "No debe asumir que el otro conductor le hará¡ espacio para que vuelva al carril.", isCorrect: true),
                                    Answer(
                                        answer: "Debe asumir que el otro conductor le permitirá¡ rebasar si usted pone su luz direccional.", isCorrect: false),
                                    Answer(
                                        answer: "Debe asumir que el otro conductor mantendrá¡ una velocidad constante.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted maneja en una autopista cuyo lá­mite de velocidad es de 65 millas por hora (mph). La mayorá­a de los otros conductores van a 70 mph o má¡s. Legalmente usted puede manejar:",
                                answers: [
                                    
                                    Answer(
                                        answer: "A un má¡ximo de 65 mph.", isCorrect: true),
                                    Answer(
                                        answer: "A 70 mph o má¡s para ir a la misma velocidad que el trá¡fico.", isCorrect: false),
                                    Answer(
                                        answer: "Entre 65 y 70 mph.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Si usted maneja má¡s rá¡pido que otros vehá­culos en una carretera de un carril en cada direcciá³n y constantemente rebasa a los otros vehá­culos, usted:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Aumentará¡ las probabilidades de involucrarse en un accidente.", isCorrect: true),
                                    Answer(
                                        answer: "Llegará¡ a su destino má¡s pronto y con mayor seguridad.", isCorrect: false),
                                    Answer(
                                        answer: "Ayudará¡ a prevenir la congestiá³n de trá¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿Cuá¡l de estos vehá­culos siempre debe parar antes de cruzar las vá­as del tren?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Camiones cisterna con carteles de materiales peligrosos.", isCorrect: true),
                                    Answer(
                                        answer: "Casas rodantes o camionetas tipo pickup que lleven un remolque para bote.", isCorrect: false),
                                    Answer(
                                        answer: "Cualquier vehá­culo de 3 ejes o má¡s o que pese má¡s de 4,000 libras.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted maneja en una calle de un solo sentido. Usted puede dar vuelta a la izquierda hacia otra calle de un solo sentido solamente si:",
                                answers: [
                                    
                                    Answer(
                                        answer: "El trá¡fico de la calle circula a la izquierda.", isCorrect: true),
                                    Answer(
                                        answer: "Una seá±al lo permite.", isCorrect: false),
                                    Answer(
                                        answer: "El trá¡fico de la calle circula a la derecha.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Un camiá³n grande va delante de usted y va a dar vuelta a la derecha hacia una calle de dos carriles en cada direcciá³n. El camiá³n:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Puede necesitar dar una vuelta amplia para poder completar la vuelta a la derecha.", isCorrect: true),
                                    Answer(
                                        answer: "Puede terminar la vuelta en cualquiera de los dos carriles.", isCorrect: false),
                                    Answer(
                                        answer: "Debe permanecer en el carril derecho mientras da vuelta.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Se puede cruzar una raya amarilla doble para rebasar a otro vehá­culo si la raya amarilla:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Que está¡ de su lado de la carretera es discontinua.", isCorrect: true),
                                    Answer(
                                        answer: "Que está¡ del otro lado de la carretera es continua.", isCorrect: false),
                                    Answer(
                                        answer: "Quá© está¡ del otro lado de la carretera es discontinua.", isCorrect: false)]),
                            
                            Question(
                                questionText: "En intersecciones, cruces peatonales y cruces de tren usted siempre debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Mirar a los lados del vehá­culo para ver lo que se acerca.", isCorrect: true),
                                    Answer(
                                        answer: "Parar, escuchar y proseguir con precauciá³n.", isCorrect: false),
                                    Answer(
                                        answer: "Pasar lentamente a los vehá­culos que parezcan estar parados sin ninguna razá³n.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted maneja a la defensiva cuando:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Se mantiene atento para estar pendiente de posibles peligros.", isCorrect: true),
                                    Answer(
                                        answer: "Deja siempre una distancia equivalente al largo de un vehá­culo entre usted y el de adelante.", isCorrect: false),
                                    Answer(
                                        answer: "Solo mira al vehá­culo delante de usted mientras maneja.", isCorrect: false)])
                        ]
            ),
                       
                       Test(
                        testName: "Exámen 5",
                        questions: [
                            Question(
                                questionText: "Usted maneja en la autopista. El vehá­culo delante de usted es un camiá³n grande, debe circular:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Detrá¡s del camiá³n a una distancia mucho mayor de la que mantendrá­a si fuera un vehá­culo de pasajeros.", isCorrect: true),
                                    Answer(
                                        answer: "Muy cerca detrá¡s del camiá³n cuando haga mal tiempo porque el camionero tiene mayor visibilidad hacia adelante.", isCorrect: false),
                                    Answer(
                                        answer: "Detrá¡s del camiá³n a una distancia no mayor de lo que mide el largo de un vehá­culo para que el camionero pueda verlo.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Todas las actividades siguientes son peligrosas hacer mientras maneja. Â¿Cuá¡l ademá¡s es ilegal?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Escuchar música con audá­fonos que cubran ambos oá­dos.", isCorrect: true),
                                    Answer(
                                        answer: "Ajustar los espejos exteriores.", isCorrect: false),
                                    Answer(
                                        answer: "Transportar un animal que vaya suelto dentro del vehá­culo.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Siempre pare antes de cruzar las vá­as del tren si:",
                                answers: [
                                    
                                    Answer(
                                        answer: "No hay espacio al otro lado de las vá­as para poder atravesarlas completamente.", isCorrect: true),
                                    Answer(
                                        answer: "El cruce de tren está¡ ubicado en una ciudad o pueblo que tiene trá¡nsito frecuente de trenes.", isCorrect: false),
                                    Answer(
                                        answer: "Usted transporta a dos o má¡s niá±os en un vehá­culo de pasajeros.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Cuando usted sigue demasiado cerca a otros conductores (maneja cerca de la defensa [parachoques] trasera):",
                                answers: [
                                    
                                    Answer(
                                        answer: "Usted puede frustrar a los otros conductores y hacerlos enojar.", isCorrect: true),
                                    Answer(
                                        answer: "Sus acciones no pueden resultar en una infracciá³n de trá¡fico.", isCorrect: false),
                                    Answer(
                                        answer: "Ayuda a reducir el congestionamiento de trá¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿Debe usted siempre manejar má¡s despacio que el resto del trá¡fico?",
                                answers: [
                                    
                                    Answer(
                                        answer: "No, porque puede obstruir el trá¡fico si maneja demasiado despacio.", isCorrect: true),
                                    Answer(
                                        answer: "Sá­, es una buena tá©cnica de manejo defensivo.", isCorrect: false),
                                    Answer(
                                        answer: "Sá­, siempre es má¡s seguro que manejar má¡s rá¡pido que el resto del trá¡fico.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted ve un obrero con banderá­n en una zona de obras má¡s adelante en la carretera. Debe obedecer sus instrucciones:",
                                answers: [
                                    
                                    Answer(
                                        answer: "En todo momento.", isCorrect: true),
                                    Answer(
                                        answer: "Solo si ve conos anaranjados má¡s adelante en el camino.", isCorrect: false),
                                    Answer(
                                        answer: "A menos que contradigan a otros letreros, semá¡foros o leyes existentes.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Â¿Cuá¡ndo se puede manejar en un carril para bicicletas (ciclová­a)?",
                                answers: [
                                    
                                    Answer(
                                        answer: "Cuando usted se encuentre a una distancia no mayor a 200 pies de una intersecciá³n donde usted piensa dar vuelta a la derecha.", isCorrect: true),
                                    Answer(
                                        answer: "En horas pico y cuando no vayan ciclistas por el carril de bicicletas (ciclová­a).", isCorrect: false),
                                    Answer(
                                        answer: "Cuando usted quiera rebasar a un automovilista que vaya delante de usted y vaya a dar vuelta a la derecha.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Usted ve un semá¡foro en luz amarilla intermitente en la prá³xima intersecciá³n. La luz amarilla intermitente significa:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Disminuir la velocidad y atravesar la intersecciá³n con mucha precauciá³n.", isCorrect: true),
                                    Answer(
                                        answer: "Parar antes de entrar a la intersecciá³n siempre y cuando lo pueda hacer con seguridad.", isCorrect: false),
                                    Answer(
                                        answer: "Parar. Ceda el paso a todo el trá¡fico que cruza antes de atravesar la intersecciá³n.", isCorrect: false)]),
                            
                            Question(
                                questionText: "No hay cruce peatonal y usted ve que un peatá³n cruza su carril má¡s adelante. Usted debe:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Parar y dejar que el peatá³n termine de cruzar la calle.", isCorrect: true),
                                    Answer(
                                        answer: "Hacer contacto visual, luego pasar al peatá³n.", isCorrect: false),
                                    Answer(
                                        answer: "Disminuir la velocidad conforme pasa al peatá³n.", isCorrect: false)]),
                            
                            Question(
                                questionText: "Una raya amarilla continua junto una raya amarilla discontinua significa que los vehá­culos que circulen:",
                                answers: [
                                    
                                    Answer(
                                        answer: "Junto a la raya discontinua pueden pasar.", isCorrect: true),
                                    Answer(
                                        answer: "En ambas direcciones pueden rebasar.", isCorrect: false),
                                    Answer(
                                        answer: "Junto a la raya continua pueden pasar.", isCorrect: false)])
                        ]
            )]
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "niceJobDude" {
            
            let vc = segue.destinationViewController as! DetailViewController
            
            
        }
    }
}









