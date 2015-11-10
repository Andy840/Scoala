//
//  Persoana.swift
//  Scoala
//
//  Created by koder on 10/28/15.
//  Copyright (c) 2015 AP. All rights reserved.
//

import UIKit

class Persoana: NSObject {
    
    // Proprietati
    var nume  : String
    var prenume : String
    
    // Initializare
    init(numeInit : String, prenumeInit : String)
    {
        self.nume = numeInit;
        self.prenume = prenumeInit;
    }
    
    //Metode (functii)
    func numeComplet() -> String { // Functie NUME (+)
        return nume + " " + prenume
    }
    


}
