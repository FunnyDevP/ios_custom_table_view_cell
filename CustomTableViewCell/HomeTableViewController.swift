//
//  HomeTableViewController.swift
//  CustomTableViewCell
//
//  Created by Funny Dev on 4/6/22.
//

import UIKit

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customCellNib = UINib(nibName: "CustomCell", bundle: nil)
        tableView.register(customCellNib, forCellReuseIdentifier: "CustomCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = "Hello"
        cell.categoryNameLabel.text = "Normal Text"
        cell.artWorkImage.image = UIImage(named: "square")
        
        return cell
    }
}

