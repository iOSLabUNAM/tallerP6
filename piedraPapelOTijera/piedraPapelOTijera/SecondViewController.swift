//
//  SecondViewController.swift
//  piedraPapelOTijera
//
//  Created by Pedro Antonio Vazquez Rodriguez on 02/11/17.
//  Copyright © 2017 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var nombre: String = ""
    var contadorMaquina = 0
    var contadorPersona = 0
    let imagenes = [" ","👊🏻","🖐🏻","✌🏻"]

    @IBOutlet weak var maquinaLabel: UILabel!
    
    @IBOutlet weak var maquinaButton: UIButton!
    @IBOutlet weak var personaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maquinaLabel.text = "Score Maquina: \(contadorMaquina)"
        personaLabel.text = "Score \(nombre): \(contadorPersona)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func jugadaButton(_ sender: UIButton) {
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(3)+1)
        var tituloAlerta = "Lol"
        if movJugador == movMaquina{
            maquinaButton.setTitle("\(imagenes[movMaquina])", for: .normal)
            tituloAlerta = "Empate"
        }else{
            switch movJugador{
            case 1:
                if movMaquina == 2{
                    maquinaButton.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Perdiste"
                    contadorMaquina += 1
                }else{
                    maquinaButton.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Ganaste"
                    contadorPersona += 1
                }
                break
            case 2:
                if movMaquina == 3{
                    maquinaButton.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Perdiste"
                    contadorMaquina += 1
                }else{
                    maquinaButton.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Ganaste"
                    contadorPersona += 1
                }
                break
            case 3:
                if movMaquina == 1{
                    maquinaButton.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Perdiste"
                    contadorMaquina += 1
                }else{
                    maquinaButton.setTitle("\(imagenes[movMaquina])", for: .normal)
                    tituloAlerta = "Ganaste"
                    contadorPersona += 1
                }
                break
            default:
                tituloAlerta = "default"
                break
            }
        }
        let alertcontroller = UIAlertController(title: tituloAlerta,message:"",preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default,handler: nil)
        alertcontroller.addAction(action)
        self.present(alertcontroller,animated: true,completion: nil)
        maquinaLabel.text = "Score Maquina: \(contadorMaquina)"
        personaLabel.text = "Score \(nombre): \(contadorPersona)"
        
    }
    
   

}
