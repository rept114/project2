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
        presidente.append(Presidente(nombre: "Enrique Peña Nieto", sexenio: "2012 - 2018", edad: "56 años"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presidente.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return celda!
    }
    


}

