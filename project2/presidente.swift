//
//  View.swift
//  project2
//
//  Created by Alumno on 10/3/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation

class presidente {
    var nombre: String
    var sexenio: String
    var sexo: String
    var Dpresidente:[DPresidente] = []
    
    init(nombre:String, sexenio:String, sexo:String) {
        self.nombre = nombre
        self.sexenio = sexenio
        self.sexo = sexo
    }
}
