//
//  BiografiaController.swift
//  project2
//
//  Created by Alumno on 10/7/22.
//  Copyright © 2022 Alumno. All rights reserved.
//
//


import UIKit

class BiografiaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var biografia : [Biografia] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        biografia.append(Biografia(Biografia: "Erik"))
        biografia.append(Biografia(Biografia: "Erik"))
        biografia.append(Biografia(Biografia: "Erik"))
        biografia.append(Biografia(Biografia: "Erik"))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return biografia.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaBiografia") as! CeldaBiografiaController
        celda.lblBiografia.text = biografia[indexPath.row].Biografia
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
