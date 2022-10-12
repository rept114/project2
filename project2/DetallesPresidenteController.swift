

import Foundation
import UIKit

class DetallesPresidenteController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblBiografia: UILabel!
    
    var presidente: Presidente?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Biografia"
        
        if presidente != nil {
            self.title = presidente?.nombre
          //  lblDirector.text = presidente?.director

                
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
                }
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Detallespresidente.count
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
            
    }
    
}


