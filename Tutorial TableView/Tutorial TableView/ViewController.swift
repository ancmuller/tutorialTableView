//
//  ViewController.swift
//  Tutorial TableView
//
//  Created by Ana Müller on 7/22/17.
//  Copyright © 2017 Ana Müller. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableViewLugares = UITableView()

    var arrayLugares = [Lugar(nome: "Austrália", foto: #imageLiteral(resourceName: "australia")),
                        Lugar(nome: "Canadá", foto: #imageLiteral(resourceName: "canada")),
                        Lugar(nome: "Chile", foto: #imageLiteral(resourceName: "chile")),
                        Lugar(nome: "Inglaterra", foto: #imageLiteral(resourceName: "inglaterra")),
                        Lugar(nome: "Islândia", foto: #imageLiteral(resourceName: "islandia")),
                        Lugar(nome: "Japão", foto: #imageLiteral(resourceName: "japao")),
                        Lugar(nome: "Madagascar", foto: #imageLiteral(resourceName: "madagascar"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Lugares"
        
        self.tableViewLugares.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(tableViewLugares)
        
        self.tableViewLugares.dataSource = self
        self.tableViewLugares.delegate = self
        
        self.tableViewLugares.register(CellLugar.self, forCellReuseIdentifier: "cell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arrayLugares.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellLugar
        
        celula.imageFoto.image = self.arrayLugares[indexPath.row].foto
        celula.labelNome.text = self.arrayLugares[indexPath.row].nome
        
        return celula
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height*0.2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

