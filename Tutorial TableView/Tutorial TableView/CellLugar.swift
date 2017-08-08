//
//  CellLugar.swift
//  Tutorial TableView
//
//  Created by Ana Müller on 7/22/17.
//  Copyright © 2017 Ana Müller. All rights reserved.
//

import Foundation
import UIKit

class CellLugar: UITableViewCell {
    
    var labelNome: UILabel!
    var imageFoto: UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let tamanhoTela = UIScreen.main.bounds
        let larguraCelula = tamanhoTela.width
        let alturaCelula = tamanhoTela.height*0.2
        
        self.imageFoto = UIImageView(frame: CGRect(x: larguraCelula*0.05, y: alturaCelula*0.05, width: larguraCelula*0.6, height: alturaCelula*0.9))
        
        self.labelNome = UILabel(frame: CGRect(x: larguraCelula*0.7, y: 0, width: larguraCelula*0.3, height: alturaCelula/2))
        self.labelNome.center.y = alturaCelula/2
        
        self.addSubview(labelNome)
        self.addSubview(imageFoto)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
