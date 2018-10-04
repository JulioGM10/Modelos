//
//  DetailViewController.swift
//  Table02-gpo05
//
//  Created by Germán Santos Jaimes on 3/15/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imagenDetail: UIImageView!
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var cantProductos: UITextField!
    
    var precioPagar: Double = 0.0
    // var productos: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiqueta.text = discos[IndexP].nombre
        imagenDetail.image = UIImage(named: discos[IndexP].imagen )
        descripcion.text = discos[IndexP].desc
        
    }

  
    @IBAction func AgregarCarrito(_ sender: Any) {
        
        if cantProductos.text! == ""{
            //cambiar en nuestros productos
            let optionMenu = UIAlertController(title: "Viniles del recuerdo", message: "Para continuar agregue una cantidad:", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            optionMenu.addAction(okAction)
            present(optionMenu, animated: true, completion: nil)
            
        }else{
            precioPagar = Double(cantProductos.text!)! * discos[IndexP].precio
            
            
            let optionMenu = UIAlertController(title: "Agregar al Carrito", message: "El precio a pagar es: $\(precioPagar) ¿Desea continuar?", preferredStyle: .alert)
            
            let yesAction = UIAlertAction(title: "Si", style: .default, handler: {(action: UIAlertAction) -> Void in
                
           // let optionMenu = UIAlertController(title: "Compra", message: "transaccion //exitosa", preferredStyle: .alert)
                
                cuentaTotal = cuentaTotal + self.precioPagar
                let newDiscList = ProductoComprado(nombre: discos[IndexP].nombre, precioTotal: self.precioPagar, cantidad: Int(self.cantProductos.text!)!)
                listaProductos.append(newDiscList)
                
            } )
            
            let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
            
            optionMenu.addAction(yesAction)
            optionMenu.addAction(noAction)
            
            present(optionMenu, animated: true, completion: nil)
            
        }
    }
    
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
