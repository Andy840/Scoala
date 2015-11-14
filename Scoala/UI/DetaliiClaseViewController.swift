//
//  DetaliiClaseViewController.swift
//  Scoala
//
//  Created by Andrei on 13/11/15.
//  Copyright © 2015 AP. All rights reserved.
//

import UIKit

class DetaliiClaseViewController: UIViewController {

    var clasaSelectataDet : Clasa!
    var scoala : Scoala!
    var profesorSelectat : Profesor!
    
    @IBOutlet weak var ClasaSelectataLabel: UILabel!
    @IBOutlet weak var ProfesorClasaLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

    self.ClasaSelectataLabel.text = self.clasaSelectataDet.numeClasa

    
        
    self.title = self.clasaSelectataDet.numeClasa
    }

    @IBAction func removeClassButton(sender: AnyObject) {
        // actiune stergere clasa
        self.scoala.listaClase.removeAtIndex(self.scoala.listaClase.indexOf(self.clasaSelectataDet)!)
        self.navigationController?.popViewControllerAnimated(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
