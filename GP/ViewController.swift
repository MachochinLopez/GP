//
//  ViewController.swift
//  GP
//
//  Created by Oswaldo Osuna on 22/04/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didTapButton(){
        guard let vc = storyboard?.instantiateViewController(identifier: "dashboard_vc") as? Dashboard else {
            return
        }
        present(vc, animated: true)
    }

}

