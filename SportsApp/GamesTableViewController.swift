//
//  GamesTableViewController.swift
//  SportsApp
//
//  Created by A on 3/22/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import Foundation
import UIKit


class GamesTableViewController: UITableViewController
{
    var gamesDataArray: Array<Games>!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //tableView.register(LeagueCell.self, forCellReuseIdentifier: "GamesCell")
        //print(self.gamesDataArray[0].homeTeamCity)
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.gamesDataArray == nil ? 0 : self.gamesDataArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = GameCell()
        let gameData = self.gamesDataArray[indexPath.row]
        let gameState = gameData.gameState
        
        if gameState == "Final"
        {
            // Load Final Cell
            cell = tableView.dequeueReusableCell(withIdentifier: "FinalCell", for: indexPath) as! GameCell
            cell.setCompatitors(homeCity: gameData.homeTeamCity, homeName: gameData.homeTeamName, homeImageURL: gameData.homeTeamLogoURL, visitCity: gameData.visitTeamCity, visitName: gameData.visitTeamName, visitImageURL: gameData.visitTeamLogoURL)
            
            
            
            let homeScoreStr = String(gameData.homeTeamScore)
            let visitScoreStr = String(gameData.visitTeamScore)
            cell.homeScoreLabel?.text = homeScoreStr 
            cell.visitScoreLabel?.text = visitScoreStr
        }
        else if gameState == "Pregame"
        {
            // Load Pregame Cell
            
            cell = tableView.dequeueReusableCell(withIdentifier: "PreGameCell", for: indexPath) as! GameCell
            
            cell.setCompatitors(homeCity: gameData.homeTeamCity, homeName: gameData.homeTeamName, homeImageURL: gameData.homeTeamLogoURL, visitCity: gameData.visitTeamCity, visitName: gameData.visitTeamName, visitImageURL: gameData.visitTeamLogoURL)
            
            
            var gameDate = Date()
            gameDate = gameDate.addingTimeInterval(TimeInterval(gameData.gameTime))
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = .short
            dateFormatter.dateStyle = .none
            cell.gameTimeLabel?.text = dateFormatter.string(from:gameDate)
        }
        
        return cell
        
    }
    
    
   
    
    
  
    
}
