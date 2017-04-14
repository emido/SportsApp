//
//  LeaguesTableViewController.swift
//  SportsApp
//
//  Created by A on 3/21/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import Foundation
import UIKit


class LeaguesTableViewController: UITableViewController
{
    var leagueData: Array<Leagues>!
    var gamesData: Array<Games>!
    
    @IBOutlet var leaguesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.leaguesTableView.register(LeagueCell.self, forCellReuseIdentifier: "LeagueCell")
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.leagueData == nil ? 0 : self.leagueData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.leaguesTableView.dequeueReusableCell(withIdentifier: "LeagueCell") as! LeagueCell
        let cellData = self.leagueData[indexPath.row]
        cell.setCell(name: cellData.name, imageURL: cellData.imageURL)
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.gamesData = Array<Games>()
        self.gamesData = self.leagueData[indexPath.row].games
        
        let selectedCell = tableView.cellForRow(at: indexPath) as! LeagueCell

        self.performSegue(withIdentifier: "GamesSegue", sender: selectedCell)
        // slide 80 week 5
        //self.currIndex =  self.tableview.indexPath(for: sender as! UITableViewCell)!.row
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let gamesView = segue.destination as! GamesTableViewController
        if segue.identifier == "GamesSegue"
        {
            if self.gamesData != nil
            {
                gamesView.gamesDataArray = self.gamesData
            }
        
        }
    }
    
    
    
    
    
    
    

    
}
