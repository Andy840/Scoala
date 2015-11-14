//
//  ClasaNouaViewController.swift
//  Scoala
//
//  Created by Andrei on 13/11/15.
//  Copyright © 2015 AP. All rights reserved.
//

import UIKit

class ClasaNouaViewController: UIViewController {
    
    @IBOutlet weak var textFieldClasaNoua: UITextField!
    var scoala : Scoala = Scoala();

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    @IBAction func addClassButtonTouched(sender: AnyObject) {
        // Adaugare clasa
        let clasaNouaNume = Clasa( numeClasaInit: textFieldClasaNoua.text!, eleviInit: [], profesorInit: nil)
        
        self.scoala.listaClase.append(clasaNouaNume)
        
        // Ne intoarcem la lista de clase
        self.navigationController?.popViewControllerAnimated(true)
        
    }
}
