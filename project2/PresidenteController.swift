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
    
    @IBOutlet weak var tvPeliculas: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        presidente.append(Presidente(nombre: "Enrique Peña Nieto", sexenio: "2012 - 2018", edad: "56 años"))
        presidente.append(Presidente(nombre: "Manuel Avila Camacho", sexenio: "1940 - 1946", edad: "Deceso en 1955"))
        presidente.append(Presidente(nombre: "Gustavo Díaz Ordaz", sexenio: "1964 - 1970", edad: "Deceso en 1979"))
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
        destino.presidente = presidente[tvPeliculas.indexPathForSelectedRow!.row]
    }
}

