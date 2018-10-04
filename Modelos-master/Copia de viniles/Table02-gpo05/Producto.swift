//
//  Producto.swift
//  Table02-gpo05
//
//  Created by Germán Santos Jaimes on 3/15/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import Foundation

struct Producto{
    var nombre: String
    var desc: String
    var precio: Double
    var imagen: String
}
var IndexP = 0  //variable para acceder a las propiedades de cualquier elemento
                //del arreglo panes en cuanquier controlador

let EV = Producto(nombre: "Enanitos Verdes",
                        desc: "ALBUM: Grandes éxitos",
                        precio: 3.00 ,
                        imagen: "Enanitos Verdes")
let CM = Producto(nombre: "Control Machete",
                   desc: "ALBUM: Solo para fanaticos",
                   precio: 8.00,
                   imagen: "Control Machete")
let BG = Producto(nombre: "Bee Gees",
                      desc: "ALBUM: one night only",
                      precio: 22.00,
                      imagen: "Bee Gees")
let LP = Producto(nombre: "Los prisioneros",
                      desc: "ALBUM: los sonidos de los 80's",
                      precio: 11.50,
                      imagen: "Los prisioneros")

let HN = Producto(nombre: "Heavy nopal",
                      desc: "ALBUM: 20 grades éxitos",
                      precio: 4.50,
                      imagen: "Heavy Nopal")

let MJ = Producto(nombre: "Michael Jackson",
                       desc: "ALBUM: BAD",
                       precio: 7.00,
                       imagen: "Michael Jackson")
let LZ = Producto(nombre: "Led Zepellin",
                      desc: "ALBUM: Mothership",
                      precio: 4.50,
                      imagen: "Led Zepellin")


var discos = [EV, CM, BG, LP, HN, MJ,LZ]


