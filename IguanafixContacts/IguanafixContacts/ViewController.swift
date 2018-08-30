//
//  ViewController.swift
//  IguanafixContacts
//
//  Created by Marvel Alvarez Rojas on 30/08/2018.
//  Copyright © 2018 Marvel Alvarez Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!
    
    var arr = ["Marvel Alvarez Rojas","Pepe loco ", "Maria la loca"]
    var searchB = UISearchBar()
    override func viewDidLoad() {
        super.viewDidLoad()
        let searchCont = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchCont
        searchB = (navigationItem.searchController?.searchBar)!
        searchB.delegate = self
        
        
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchBar.text)
    }

    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arr.count
    }
    
    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableview.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
       
        return cell
    }
    

}

