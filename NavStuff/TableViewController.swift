//
//  TableViewController.swift
//  NavStuff
//
//  Created by James Campagno on 6/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var queenSongs: [String] = []
    
    override func viewDidLoad() {
        loadSongs()
    }
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return queenSongs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DirtyCell", for: indexPath)
        
        let songTitle = queenSongs[indexPath.row]
        
        cell.textLabel?.text = songTitle
        return cell
    }
    
    func loadSongs() {
        queenSongs = [
            "Bohemian Rhapsody",
            "We Are The Champions",
            "Another One Bites The Dust",
            "Under Pressure",
            "Somebody to Love"
        ]
        
        
    }
    
    
    
}
