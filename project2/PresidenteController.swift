//
//  ViewController.swift
//  project2
//
//  Created by Alumno on 10/3/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PresidenteController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var presidente:[Presidente] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        presidente.append(presidente(nombre: "El Congo", sexo: "Maria Venegas", sexenio: "80's"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    


}

