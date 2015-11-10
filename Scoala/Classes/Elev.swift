//
//  Elev.swift
//  Scoala
//
//  Created by koder on 10/28/15.
//  Copyright © 2015 AP. All rights reserved.
//

import UIKit

class Elev : Persoana {
    
    //Proprietati
    var note = [Disciplina : [Int]]()
    var clasa : Clasa
    // nume
    //prenume
    
    
    //Initializare
    init(numeElevInit : String, prenumeInit: String, clasaInit : Clasa) {
        self.clasa = clasaInit
        
        super.init(numeInit: numeElevInit, prenumeInit: prenumeInit)
    }
    

    //Metode (functii)
    func adaugare_nota (disciplina: Disciplina, nota: Int){ // Functie adaugare nota (+)
        
        var noteMaterie = self.note[disciplina]
        
        if let _ = noteMaterie {
            noteMaterie?.append(nota)
            
            self.note[disciplina] = noteMaterie
        } else {
            
            self.note[disciplina] = [nota]
        }
    }
    
    func stergere_nota (disciplina: Disciplina, nota: Int){ // Functie stergere nota(+)
        
        var note = self.note[disciplina]
        
            if let index = note?.indexOf(nota) {
        
                note?.removeAtIndex(index)
            }
        self.note[disciplina] = note
    }


    func print_note(disciplina: Disciplina){ //Functie printare nota (+)
        for x in self.note[disciplina]!{
            print(x)
        }
    }


    func medie_elev(disciplina: Disciplina) -> Double{ // Functie MEDIE ELEV ()
        var total = 0.0
        for x in self.note[disciplina]! {
            total += Double(x)
        }
        let count = Double(self.note[disciplina]!.count)
        let medie = total/count
        return medie
    }
    
    
    
}








