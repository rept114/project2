

import Foundation
import UIKit

class DetallesPresidenteController : UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblBiografia: UILabel!
    
    var presidente: Presidente?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Biografia"
        
        if presidente != nil {
            self.title = presidente?.nombre
          //  lblDirector.text = presidente?.director

            
        }
    }
}

