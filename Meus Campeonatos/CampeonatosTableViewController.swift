//
//  CampeonatosTableViewController.swift
//  Meus Campeonatos
//
//  Created by iossenac on 17/09/16.
//  Copyright © 2016 Renato Nunes de Nunes. All rights reserved.
//

import UIKit

class CampeonatosTableViewController: UITableViewController, UISplitViewControllerDelegate {
    
    
    // MARK: - Model
    let campeonatos = [
        (ano:2016, categoria:"Open", parceiro:"Nícolas", nome:"Brasileiro", local:"POA"),
        (ano:2016, categoria:"Segunda", parceiro:"Bauer", nome:"Master 1E", local:"POA"),
        (ano:2016, categoria:"Segunda", parceiro:"Nícolas", nome:"Estadual", local:"POA"),
        (ano:2016, categoria:"Segunda", parceiro:"Nícolas", nome:"Master 2E", local:"POA")
    ]
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        
        return true
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.splitViewController?.delegate = self
        
    }


    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return campeonatos.count
    }

    
    //selecionar uma celula pra uma linha qualquer
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        
        if let celula = cell as? CampeonatoTableViewCell{
            
            let (ano, categoria, parceiro, nome, _) = campeonatos[(indexPath as NSIndexPath).row]
            
            celula.configure(nome, ano, categoria, parceiro)
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let (ano, categoria, parceiro, nome, local) = campeonatos[(indexPath as NSIndexPath).row]
                
                if let navcon = segue.destination as? UINavigationController{
                    if let destino = navcon.visibleViewController as? CampeonatoDetalheViewController{
                        destino.ano = ano
                        destino.categoria = categoria
                        destino.parceiro = parceiro
                        destino.local = local
                        destino.nome = nome
                    }
                }
            }
        
        }
        
        
        
        
    }
    

}
