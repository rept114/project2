//
//  ViewController.swift
//  project2
//
//  Created by Alumno on 10/3/22.
//  Copyright © 2022 Alumno. All rights reserved.
//



import UIKit

class PresidenteController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var presidente : [Presidente] = []
    
    @IBOutlet weak var TvPresidente: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        presidente.append(Presidente(nombre: "Lazaro Cardenas", sexenio: "1934 - 1940", edad: "Deceso en 1970", descripcion: ""))
        presidente.append(Presidente(nombre: "Manuel Avila Camacho", sexenio: "1940 - 1946", edad: "Deceso en 1955", descripcion: "Lázaro Cárdenas del Río nació en Jiquilpan, Michoacán en 1895, hijo de Dámaso Cárdenas y de Felicitas del Río Amezcua. En 1913 se unió a la Revolución mexicana y catorce años después obtuvo el grado de General de División. En 1928 llegó a la gubernatura de Michoacán e impulsó la Reforma Agraria en ese estado; años más tarde se convirtió en presidente del Partido Nacional Revolucionario, el cúal lo postuló en diciembre de 1933 como candidato a la Presidencia de la República y salió triunfante en las elecciones. Su periodo de gobierno, entre otros asuntos relevantes, se caracterizó por la repartición de tierras, la expropiación petrolera y la creación de instituciones como el Instituto Politécnico Nacional y el Instituto Nacional de Antropología e Historia. En el ámbito internacional, destacó su apoyo a miles de refugiados de la Guerra Civil Española. Al terminar su período de gobierno, durante los años de la Segunda Guerra Mundial, ocupó el cargo de Secretario de la Defensa. El general Cárdenas murió en la Ciudad de México el 19 de octubre de 1970."))
        presidente.append(Presidente(nombre: "Miguel Alemán Valdés", sexenio: "1946 - 1952", edad: "Deceso en 1983", descripcion: "Manuel Ávila Camacho fue un militar y político de origen mexicano, y es ampliamente conocido por haber sido presidente de México a mediados del siglo XX. Dentro de su gestión presidencial se puede resaltar la relación laboral que reestableció con Estados Unidos prontamente después de la Segunda Guerra Mundial y la transición de un gobierno militar a union civil."))
        presidente.append(Presidente(nombre: "Adolfo Ruiz Cortines", sexenio: "1952 - 1958", edad: "Deceso en 1973", descripcion: "Adolfo Ruiz Cortines (1890-1973), político mexicano, presidente de la República (1952-1958). Nacido en Veracruz, donde cursó sus primeros estudios, se incorporó a las filas del Ejército constitucionalista durante la Revolución Mexicana. Fue simpatizante de Francisco I. Madero y, tras la muerte de éste, luchó contra Victoriano Huerta. Desempeñó puestos de relevancia como colaborador de los presidentes Lázaro Cárdenas (1934-1940) y Manuel Ávila Camacho (1940-1946). Asimismo, fue elegido gobernador de Veracruz en 1944, y designado titular de la cartera de Gobernación en 1948 en el ejecutivo de Miguel Alemán Valdés (1946-1952), a quien sucedió en la presidencia de la República. Su gobierno supuso un giro progresista frente a la orientación más conservadora de sus dos inmediatos predecesores en el cargo. Durante su mandato se fundó el Patronato del Ahorro Nacional; se avanzó en el proceso de reforma agraria, estableciendo el Seguro Agrícola Integral; se fomentó la industria; mejoraron las infraestructuras y obras públicas, sobre todo carreteras y ferrocarriles; se construyeron nuevos oleoductos y hubo grandes avances en la electrificación del país; se dotó a la ciudad de México de grandes avenidas, parques y jardines; la educación pública fue potenciada; y se concedió el voto a las mujeres. Hasta su muerte, acaecida en Veracruz en 1973, conservó un gran prestigio e influencia."))
        presidente.append(Presidente(nombre: "Adolfo lopez Mateos", sexenio: "1958 - 1964", edad: "Deceso en 1969", descripcion: "Adolfo López Mateos, vio la luz en Arzapán de Zaragoza el dia  26 de mayo del año 1908. Fue hijo natural de Gonzalo de Murga, pero su padrastro le dio su apellido. Fungió como el presidente N°50 de los Estados Unidos de México. Hijo de Elena Mateos, docente y poetisa. La joven viuda, con cinco pequeños y una dura situación económica, fue directiva de un orfanato; con el apoyo de su hijo mayor su familia superó las dificultades. Adolfo hizo sus estudios iniciales en el Colegio Francés, gracias a un subsidio de la Fundación Rafael Dondé; Andres Donateur fue su maestro. Por su trabajo en la Librería Selfa tuvo su estrechez con los libros. Luego de su estudio en la Escuela Nacional Preparatoria, continuó en el Instituto Científico Literario de Toluca. Trabajando de bibliotecario pago sus estudios; se destaco en la caminata y el boxeo, luego integró el Club de los exploradores y dictaba clases de historia y literatura"))
        presidente.append(Presidente(nombre: "Gustavo Díaz Ordaz", sexenio: "1964 - 1970", edad: "Deceso en 1979", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Luis Echeverría Alvarez", sexenio: "1970 - 1976", edad: "Deceso en 2022", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "José López portillo y Pacheco", sexenio: "1976 - 1982", edad: "Deceso en 2004", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Miguel de la Madrid Hurtado", sexenio: "1982 - 1988", edad: "Deceso en 2012", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Carlos Salinas de Gortari", sexenio: "1988 - 1994", edad: "74 años", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Ernesto Zedillo Ponce de León", sexenio: "1994 - 2000", edad: "70 años", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Vicente Fox Quesada", sexenio: "2000 - 2006", edad: "80 años", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Felipe Calderon", sexenio: "2006 - 2012", edad: "60 años", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Enrique Peña Nieto", sexenio: "2012 - 2018", edad: "56 años", descripcion: "<#String#>"))
        presidente.append(Presidente(nombre: "Andres Manuel López Obrador", sexenio: "2018 - 2022", edad: "68 años", descripcion: "<#String#>"))

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presidente.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPresidente") as! CeldaPresidenteController
        celda.lblNombre.text = presidente[indexPath.row].nombre
        celda.lblEdad.text = presidente[indexPath.row].edad
        celda.lblSexenio.text = presidente[indexPath.row].sexenio
        
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPresidenteController
        destino.presidente = presidente[TvPresidente.indexPathForSelectedRow!.row]
    }
}

