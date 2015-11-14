//
//  MeniuPrincipalViewController.swift
//  Scoala
//
//  Created by koder on 11/5/15.
//  Copyright © 2015 AP. All rights reserved.
//

import UIKit

class MeniuPrincipalViewController: UIViewController {
    
    var scoala:Scoala = Scoala()
    
    @IBAction func listaClasaTouched(sender: AnyObject) {
    self.performSegueWithIdentifier("listaClaseSequeIdentifier", sender: nil)
    
    }

    @IBAction func listaProfesoriTouched(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Setup classes
        let clasa1 = Clasa(numeClasaInit: "Clasa 1", eleviInit: nil, profesorInit: nil)
        let clasa2 = Clasa(numeClasaInit: "Clasa 3", eleviInit: nil, profesorInit: nil)
        let clasa3 = Clasa(numeClasaInit: "Clasa 5", eleviInit: nil, profesorInit: nil)
        let clasa4 = Clasa(numeClasaInit: "Clasa 7", eleviInit: nil, profesorInit: nil)
        let clasa5 = Clasa(numeClasaInit: "Clasa 9", eleviInit: nil, profesorInit: nil)
        let clasa6 = Clasa(numeClasaInit: "Cercetasi", eleviInit: nil, profesorInit: nil)
        
        self.scoala.listaClase = [clasa1, clasa2, clasa3, clasa4, clasa5, clasa6];
        
        
        let elev1 = Elev(numeElevInit: "Pop", prenumeInit: "Ioan", clasaInit: clasa1)
        
        self.scoala.listaElevi += [elev1]
        
        
        let prof1 = Profesor(numeInit: "Nistor", prenumeInit: "Razvan", specializareInit: "matematica")
        let prof2 = Profesor(numeInit: "Popescu", prenumeInit: "Maria", specializareInit: "geograf")
        
        self.scoala.listaProfesori += [prof1]
        
        
        let disciplina1 = Disciplina(numeDisciplina: "Matematica", profDisciplina: prof1)
        let disciplina2 = Disciplina(numeDisciplina: "Geografie", profDisciplina: prof2)
        self.scoala.listaDisciplina += [disciplina1, disciplina2]
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "listaClaseSequeIdentifier") {
            let listaClasaViewController = segue.destinationViewController as! ListaClaseTableViewController
            listaClasaViewController.scoala = self.scoala
        }
//        if (segue.identifier == "listaEleviSequeIdentifier") {
//            let listaEleviViewController = segue.destinationViewController as! ListaEleviTableViewController
//            listaEleviViewController.lista = self.listaElevi
//        }
//        if (segue.identifier == "listaProfSegueIdentifier") {
//            let listaProfViewController = segue.destinationViewController as! ListaProfesoriTableViewController
//            listaProfViewController.lista = self.listaProfesori
//        }
//        if (segue.identifier == "listaDisciplineSegueIdentifier") {
//            let listaDiscViewController = segue.destinationViewController as!ListaDisciplineTableViewController
//            listaDiscViewController.lista = self.listaDisciplina
//        }
        
    }
    

}
