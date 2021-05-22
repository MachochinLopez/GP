//
//  InventoryCreate.swift
//  GP
//
//  Created by Oswaldo Osuna on 22/04/21.
//

import UIKit

class InventoryCreate: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didTapButtonCreate(){
        guard let vc = storyboard?.instantiateViewController(identifier: "inventory_vc") as? Inventory else {
            return
        }
        
        vc.createProduct(description: "Producto 21", unit_id: 4, completion: {(error) in
            if let error = error {
                print("Error al crear el objeto")
                print(error)
            }
        })
        
        present(vc, animated: true)
    }
}
