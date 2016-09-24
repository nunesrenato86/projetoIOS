//
//  CampeonatoDetalheViewController.swift
//  Meus Campeonatos
//
//  Created by iossenac on 17/09/16.
//  Copyright © 2016 Renato Nunes de Nunes. All rights reserved.
//

import UIKit

class CampeonatoDetalheViewController: UIViewController {
    
    @IBOutlet weak var lblParceiroDetalhe: UILabel!
    
    @IBOutlet weak var lblNomeDetalhe: UILabel!
    
    @IBOutlet weak var lblCategoriaDetalhe: UILabel!
    
    @IBOutlet weak var lblLocalDetalhe: UILabel!
    
    @IBOutlet weak var lblAnoDetalhe: UILabel!
    
    
    
    var nome: String? {
        didSet{
            updateUI()
        }
    }
    
    var ano: Int? {
        didSet{
            updateUI()
        }
    }
    
    var local: String? {
        didSet{
            updateUI()
        }
    }
    
    var parceiro: String? {
        didSet{
            updateUI()
        }
    }
    
    var categoria: String? {
        didSet{
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI(){
        lblNomeDetalhe?.text = nome ?? "_"
        lblAnoDetalhe?.text = String(ano ?? -12)
        lblLocalDetalhe?.text = local ?? "_"
        lblParceiroDetalhe?.text = parceiro ?? "_"
        lblCategoriaDetalhe?.text = categoria ?? "_"
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
