//
//  View.swift
//  project2
//
//  Created by Alumno on 10/3/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation

class Presidente {
    var nombre: String
    var sexenio: String
    var edad: String
    var Dpresidente:[DPresidente] = []
    
    init(nombre:String, sexenio:String, edad:String) {
        self.nombre = nombre
        self.sexenio = sexenio
        self.edad = edad
    }
}
