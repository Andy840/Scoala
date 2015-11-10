//
//  DetaliiClasaViewController.swift
//  Scoala
//
//  Created by koder on 11/5/15.
//  Copyright © 2015 AP. All rights reserved.
//

import UIKit

class DetaliiClasaViewController: UIViewController {

    var clasaSelectata : Clasa!
    @IBOutlet weak var numeClasaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.numeClasaLabel.text = self.clasaSelectata.numeClasa
        
        self.title = self.clasaSelectata.numeClasa
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
