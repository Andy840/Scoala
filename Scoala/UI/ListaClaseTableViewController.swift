//
//  ListaClaseTableViewController.swift
//  Scoala
//
//  Created by koder on 11/5/15.
//  Copyright © 2015 AP. All rights reserved.
//

import UIKit

class ListaClaseTableViewController: UITableViewController {

    var scoala : Scoala = Scoala();
    var clasaSelectata : Clasa!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData();
    }

    // MARK: - Table view data source

    //Functie nr delimitari
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    //Functie nr randuri
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.scoala.listaClase.count
    }
    
    //Functie text celula
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        cell.textLabel?.text = self.scoala.listaClase[indexPath.row].numeClasa
        
        // Configure the cell...

        return cell
    }
    

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.clasaSelectata = self.scoala.listaClase[indexPath.row]
        
        self.performSegueWithIdentifier("detaliiClasa", sender: nil)
    }
    
//    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRectMake(0, 0, 200, 40))
//        view.backgroundColor = UIColor.redColor()
//        return view;
//    }


    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "detaliiClasa") {
            let detaliiCLasa = segue.destinationViewController as! DetaliiClaseViewController
            detaliiCLasa.clasaSelectataDet = self.clasaSelectata
        }
        
        if (segue.identifier == "detaliiClasa") {
            let detaliiCLasa = segue.destinationViewController as! DetaliiClaseViewController
            detaliiCLasa.scoala = self.scoala
        }
        
        if (segue.identifier == "identifierClasaNoua") {
            let listaSegue = segue.destinationViewController as! ClasaNouaViewController
            listaSegue.scoala = self.scoala
        }
    }

}
