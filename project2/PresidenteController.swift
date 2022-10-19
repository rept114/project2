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
        presidente.append(Presidente(nombre: "Lazaro Cardenas", sexenio: "1934 - 1940", edad: "Deceso en 1970", descripcion: "Lázaro Cárdenas del Río nació en Jiquilpan, Michoacán en 1895, hijo de Dámaso Cárdenas y de Felicitas del Río Amezcua. En 1913 se unió a la Revolución mexicana y catorce años después obtuvo el grado de General de División.", fotito: "image1"))
        presidente.append(Presidente(nombre: "Manuel Avila Camacho", sexenio: "1940 - 1946", edad: "Deceso en 1955", descripcion: "Lázaro Cárdenas del Río nació en Jiquilpan, Michoacán en 1895, hijo de Dámaso Cárdenas y de Felicitas del Río Amezcua. En 1913 se unió a la Revolución mexicana y catorce años después obtuvo el grado de General de División. ", fotito: "image2"))
        presidente.append(Presidente(nombre: "Miguel Alemán Valdés", sexenio: "1946 - 1952", edad: "Deceso en 1983", descripcion: "Manuel Ávila Camacho fue un militar y político de origen mexicano, y es ampliamente conocido por haber sido presidente de México a mediados del siglo XX. Dentro de su gestión presidencial se puede resaltar la relación laboral que reestableció con Estados Unidos prontamente después de la Segunda Guerra Mundial y la transición de un gobierno militar a union civil.", fotito: "image3"))
        presidente.append(Presidente(nombre: "Adolfo Ruiz Cortines", sexenio: "1952 - 1958", edad: "Deceso en 1973", descripcion: "Adolfo Ruiz Cortines (1890-1973), político mexicano, presidente de la República (1952-1958). Nacido en Veracruz, donde cursó sus primeros estudios, se incorporó a las filas del Ejército constitucionalista durante la Revolución Mexicana. Fue simpatizante de Francisco I. Madero y, tras la muerte de éste, luchó contra Victoriano Huerta.", fotito: "image4"))
        presidente.append(Presidente(nombre: "Adolfo lopez Mateos", sexenio: "1958 - 1964", edad: "Deceso en 1969", descripcion: "Adolfo López Mateos, vio la luz en Arzapán de Zaragoza el dia  26 de mayo del año 1908. Fue hijo natural de Gonzalo de Murga, pero su padrastro le dio su apellido. Fungió como el presidente N°50 de los Estados Unidos de México. Hijo de Elena Mateos, docente y poetisa.", fotito: "image5"))
        presidente.append(Presidente(nombre: "Gustavo Díaz Ordaz", sexenio: "1964 - 1970", edad: "Deceso en 1979", descripcion: "Nació en Puebla, en 1911. Abogado, político y presidente de la República (1964-1970). Su experiencia en el sistema judicial la adquirió en el estado de Puebla. Fue agente del Ministerio Público; oficial de justicia y juez en Tecamachalco; presidente del Consejo de Conciliación y Arbitraje y del Tribunal Superior de Justicia.", fotito: "image6"))
        presidente.append(Presidente(nombre: "Luis Echeverría Alvarez", sexenio: "1970 - 1976", edad: "Deceso en 2022", descripcion: "Luis Echeverría Álvarez (17 de enero de 1922) Político y abogado mexicano que fue presidente de México entre 1970 y 1976. Licenciado en Derecho, llegó a la política en 1946 como secretario de Rodolfo Sánchez Taboada. Con el paso del tiempo ocupó varios cargos, llegando a ser secretario de Gobernación del presidente Gustavo Díaz Ordaz . Su administración estuvo marcada por la inflación y devaluación del peso mexicano y la represión.", fotito: "image7"))
        presidente.append(Presidente(nombre: "José López portillo y Pacheco", sexenio: "1976 - 1982", edad: "Deceso en 2004", descripcion: "José López Portillo (Ciudad de México, 16 de junio de 1920-ibid., 17 de febrero de 2004) fue un abogado y político mexicano que se desempeñó como presidente de México del 1 de diciembre de 1976 al 30 de noviembre de 1982. En 1973 fue nombrado secretario de Hacienda tras la renuncia de Hugo B. Margáin, cargo que desempeñó hasta su postulación como candidato presidencial en 1975.", fotito: "image8"))
        presidente.append(Presidente(nombre: "Miguel de la Madrid Hurtado", sexenio: "1982 - 1988", edad: "Deceso en 2012", descripcion: "Miguel de la Madrid Hurtado (Colima, Colima; 12 de diciembre de 1934-Ciudad de México, 1 de abril de 2012) fue un abogado y político mexicano que se desempeñó como presidente de México del 1 de diciembre de 1982 al 30 de noviembre de 1988.", fotito: "image9"))
        presidente.append(Presidente(nombre: "Carlos Salinas de Gortari", sexenio: "1988 - 1994", edad: "74 años", descripcion: "En 1982, su antiguo profesor en la UNAM, Miguel de la Madrid, fue elegido presidente de México y Salinas fue nombrado secretario de Programación y Presupuesto (SPP). Carlos Salinas fue designado candidato a la presidencia de la República por el PRI el 4 de octubre de 1987.", fotito: "image10"))
        presidente.append(Presidente(nombre: "Ernesto Zedillo Ponce de León", sexenio: "1994 - 2000", edad: "70 años", descripcion: "Ernesto Zedillo Ponce de León (Ciudad de México, 27 de diciembre de 1951) es un economista y político mexicano que se desempeñó como presidente de México desde el 1 de diciembre de 1994 hasta el 30 de noviembre de 2000.", fotito: "image11"))
        presidente.append(Presidente(nombre: "Vicente Fox Quesada", sexenio: "2000 - 2006", edad: "80 años", descripcion: "Nació el 2 de julio de 1942 en Ciudad de México. Su madre, Mercedes Quesada Etxaide, nació en San Sebastián, Guipúzcoa (España), el 11 de mayo de 1919, y emigró a México a temprana edad.", fotito: "image12"))
        presidente.append(Presidente(nombre: "Felipe Calderon", sexenio: "2006 - 2012", edad: "60 años", descripcion: "Calderón nació en Morelia, Michoacán, el 18 de agosto de 1962; hijo de Luis Calderón Vega y Carmen Hinojosa Calderón. Tiene 4 hermanos: Luisa María (senadora de la República), Luis Gabriel (médico), Juan Luis (diputado federal LV Legislatura) y María del Carmen.", fotito: "image13"))
        presidente.append(Presidente(nombre: "Enrique Peña Nieto", sexenio: "2012 - 2018", edad: "56 años", descripcion: "Es abogado por la Universidad Panamericana​ y maestro en administración de empresas por el Instituto Tecnológico y de Estudios Superiores de Monterrey. ​ Es miembro del Partido Revolucionario Institucional desde 1984.", fotito: "image14"))
        presidente.append(Presidente(nombre: "Andres Manuel López Obrador", sexenio: "2018 - 2022", edad: "68 años", descripcion: "Andrés Manuel López Obrador nació el 13 de noviembre de 1953 en Tepetitán, población del municipio de Macuspana, Tabasco; es licenciado en Ciencias Políticas y Administración Pública por la Universidad Nacional Autónoma de México (1973 – 1976).", fotito: "image15"))

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
        celda.lblImageview.image = UIImage(named:presidente[indexPath.row].fotito)
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPresidenteController
        destino.presidente = presidente[TvPresidente.indexPathForSelectedRow!.row]
    }
}

