//
//  ListaCompras.swift
//  Table02-gpo05
//
//  Created by macbook on 06/04/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import Foundation
import UIKit

struct ProductoComprado {
    var nombre: String
    var precioTotal: Double
    var cantidad: Int 
}

var cuentaTotal: Double = 0.0
//let pan1 = ProductoComprado(nombre: "panecito", precioTotal: "12", cantidad: 2)
var listaProductos: [ProductoComprado] = []
