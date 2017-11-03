//
//  ViewController.swift
//  piedraPapelOTijera
//
//  Created by Pedro Antonio Vazquez Rodriguez on 02/11/17.
//  Copyright © 2017 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "jugarSegue"{
            let destino = segue.destination as! SecondViewController
            destino.nombre = nameTextField.text!
            
        }
    }
    
    @IBAction func nameTextField(_ sender: UITextField) {
        self.resignFirstResponder()
    }
    

}

