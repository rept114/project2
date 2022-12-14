

import Foundation
import UIKit

class DetallesPresidenteController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    var presidente: Presidente?
    var DBiografia : [Dbiografia] = []
    
    @IBOutlet weak var lblImageview2: UIImageView!
    @IBOutlet weak var lblBiografia: UILabel!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DBiografia.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaBiografia") as! CeldaBiografiaController
        celda.lblDbiografia.text = DBiografia[indexPath.row].puestos
        
        return celda
    }

    @IBOutlet weak var TvDPresidente: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DBiografia.append(Dbiografia(puestos: "Secretario de hacienda"))
        DBiografia.append(Dbiografia(puestos: "Gobernador"))
        DBiografia.append(Dbiografia(puestos: "Presidente"))
        DBiografia.append(Dbiografia(puestos: "Interno"))
        DBiografia.append(Dbiografia(puestos: "Abogado"))
        self.title = "Detalles de pelicula"
        
        if presidente != nil {
            self.title = presidente?.nombre
            lblBiografia.text = presidente?.descripcion
            lblImageview2.image = UIImage(named:presidente!.fotito)
            
        }
       
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

    }
}

    



