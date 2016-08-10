//
//  ViewController.swift
//  devinette
//
//  Created by thomas millet on 10/08/2016.
//  Copyright © 2016 thomas millet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userChoise: UITextField!
    @IBOutlet weak var reponse: UILabel!

    @IBAction func validerChoix(sender: AnyObject) {
        let aleatoire = Int(arc4random_uniform(11))
        print(aleatoire)
        
        if userChoise.text == String(aleatoire) {
            print("bravo")
        reponse.text = "Bravo j'avais \(aleatoire) doigts"

        } else {
            print("faux")
            reponse.text = "Dommage j'avais \(aleatoire) doigts"
            
        }
        userChoise.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

