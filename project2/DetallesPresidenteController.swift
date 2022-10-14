

import Foundation
import UIKit

class DetallesPresidenteController : UIViewController, UITableViewDelegate, UITableViewDataSource {
        var Dpresidente: DPresidente?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Dpresidente.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPresidente") as! CeldaPresidenteController
        celda.lblNombre.text = Dpresidente[indexPath.row].nombre
        celda.lblEdad.text = Dpresidente[indexPath.row].edad
        celda.lblSexenio.text = Dpresidente[indexPath.row].sexenio
        
        return celda
    }

    @IBOutlet weak var TvDPresidente: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Dpresidente.append(DPresidente(nombre: "Lazaro Cardenas", sexenio: "1934 - 1940", edad: "Deceso en 1970"))
        Dpresidente.append(DPresidente(nombre: "Manuel Avila Camacho", sexenio: "1940 - 1946", edad: "Deceso en 1955"))
        Dpresidente.append(DPresidente(nombre: "Miguel Alemán Valdés", sexenio: "1946 - 1952", edad: "Deceso en 1983"))
        presidente.append(Presidente(nombre: "Adolfo Ruiz Cortines", sexenio: "1952 - 1958", edad: "Deceso en 1973"))
        presidente.append(Presidente(nombre: "Adolfo lopez Mateos", sexenio: "1958 - 1964", edad: "Deceso en 1969"))
        presidente.append(Presidente(nombre: "Gustavo Díaz Ordaz", sexenio: "1964 - 1970", edad: "Deceso en 1979"))
        presidente.append(Presidente(nombre: "Luis Echeverría Alvarez", sexenio: "1970 - 1976", edad: "Deceso en 2022"))
        presidente.append(Presidente(nombre: "José López portillo y Pacheco", sexenio: "1976 - 1982", edad: "Deceso en 2004"))
        presidente.append(Presidente(nombre: "Miguel de la Madrid Hurtado", sexenio: "1982 - 1988", edad: "Deceso en 2012"))
        presidente.append(Presidente(nombre: "Carlos Salinas de Gortari", sexenio: "1988 - 1994", edad: "74 años"))
        presidente.append(Presidente(nombre: "Ernesto Zedillo Ponce de León", sexenio: "1994 - 2000", edad: "70 años"))
        presidente.append(Presidente(nombre: "Vicente Fox Quesada", sexenio: "2000 - 2006", edad: "80 años"))
        presidente.append(Presidente(nombre: "Felipe Calderon", sexenio: "2006 - 2012", edad: "60 años"))
        presidente.append(Presidente(nombre: "Enrique Peña Nieto", sexenio: "2012 - 2018", edad: "56 años"))
        presidente.append(Presidente(nombre: "Andres Manuel López Obrador", sexenio: "2018 - 2022", edad: "68 años"))
        
    }
        self.title = "Biografia"
        
        if Dpresidente != nil {
            self.title = Dpresidente?.nombre
          //  lblDirector.text = presidente?.director

                
            func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
                }
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
        }
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPresidenteController
        destino.Dpresidente = Dpresidente[TvDPresidente.indexPathForSelectedRow!.row]
            }
        }
            
    }
    
}


