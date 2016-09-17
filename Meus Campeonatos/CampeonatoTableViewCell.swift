//
//  CampeonatoTableViewCell.swift
//  Meus Campeonatos
//
//  Created by iossenac on 17/09/16.
//  Copyright © 2016 Renato Nunes de Nunes. All rights reserved.
//

import UIKit

class CampeonatoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblNome: UILabel!
    
    @IBOutlet weak var lblCategoria: UILabel!
    
    @IBOutlet weak var lblAno: UILabel!
    
    @IBOutlet weak var lblParceiro: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(nome: String, _ ano: Int, _ categoria: String, _ parceiro: String){
        lblNome.text = nome
        lblAno.text = "\(ano)"
        lblCategoria.text = categoria
        lblParceiro.text = parceiro
    
    }

}

//(ano:2016, categoria:"Open", parceiro:"Nícolas", nome:"Brasileiro", local:"POA"),
