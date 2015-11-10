//
//  Clasa.swift
//  Scoala
//
//  Created by koder on 10/28/15.
//  Copyright (c) 2015 AP. All rights reserved.
//

import UIKit

class Clasa : NSObject {
    
    //Proprietati
    var numeClasa: String!
    var elevi : [Elev] = []
    var discipline : [Disciplina] = []
    var profesor : Profesor!
    
    //Initializare 
    init(numeClasaInit: String, eleviInit : [Elev]!, profesorInit: Profesor!) {
        self.numeClasa = numeClasaInit
        if let eleviAux = eleviInit {
            self.elevi = eleviInit
        }
        self.profesor = profesorInit
    }
    
    //Metode (functii)
    func adauga_elev (elev: Elev){ //Functie adauga ELEVI (+)
        self.elevi.append(elev)
    }
    
    func stergere_elev (elev: Elev){ //Functie stergere ELEV (+)
        let index_stergere = elevi.indexOf(elev)
        self.elevi.removeAtIndex(index_stergere!)
    }
    
    func adauga_disciplina (numeDisc : Disciplina){ //Functie adauga MATERIE (+)
        self.discipline.append(numeDisc)
    }
    
//    func stergere_disciplina(numeDisc : Disciplina) { 
//        
//    }
    
    func viz_materii() { //Functie printare MATERII (+)
        for x in self.discipline{
            print(x)
        }
    }
    
    func adauga_profesor(numeprof: Profesor){
        self.profesor = numeprof
    }
    
    func sterge_profesor(numeprof: Profesor){
        self.profesor = nil
    }
    
}





