//
//  ViewController1.swift
//  CatOnCould
//
//  Created by Yang Yi  on 25/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import UIKit

class CatViewController: UIViewController {
    var viewModel = CatViewModel()
    var cats = [CatModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cat1 = CatModel(cat: "Wang cai", color: "yellow", type: "tu gou")
        let cat2 = CatModel(cat: "wang wang", color: "black and white", type: "ha si qi")
        cats += [cat1, cat2]
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension CatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.catTableViewCell, for: indexPath)as? CatTableViewCell else {
            fatalError("Could not get an instance of TableViewCell")
        }
        let cat = cats[indexPath.row]
        cell.nameFieldLabel.text = cat.cat
        cell.colorFieldLabel.text = cat.color
        cell.typeFieldLabel.text = cat.type
        return cell
    }
    
    
}

