//
//  ViewController.swift
//  MyFirstApp
//
//  Created by DAMII on 5/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelContador: UILabel!
    
    var contador: Int = 0
    
    @IBAction func BtnResetear(_ sender: Any) {
        contador = 0
        labelContador.text = String(contador)
    }
    
    @IBAction func BtnIncrementar(_ sender: Any) {
        contador += 1
        labelContador.text = String(contador)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelContador.text = String(contador)
    }
    
}
