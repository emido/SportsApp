//
//  ViewController.swift
//  SportsApp
//
//  Created by A on 3/21/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import UIKit

class WeeksTableViewController: UITableViewController
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailView = segue.destination as! LeaguesTableViewController
        
        if segue.identifier == "week1"
        {
            // Send week1 data to the leagues tableview
            if let week1file  = Bundle(for: AppDelegate.self).path(forResource: "sports_week_1", ofType: "json")
            {
                // Sports_week_1.json is available -> Pass it to the next veiw
                let data = NSData(contentsOfFile: week1file) as! Data
                let json = JSON(data: data)
                
                let leagueDataArr = json["leagues"].arrayValue
                detailView.leagueData = Array<Leagues>()
                
                for leagueData in leagueDataArr
                {
                    detailView.leagueData.append(Leagues(data: leagueData))
                }
                
            }
            
        }
        else if segue.identifier == "week2"
        {
             // Send week2 data to the leagues tableview
            // Send week1 data to the leagues tableview
            if let week1file  = Bundle(for: AppDelegate.self).path(forResource: "sports_week_2", ofType: "json")
            {
                // Sports_week_1.json is available -> Pass it to the next veiw
                let data = NSData(contentsOfFile: week1file) as! Data
                let json = JSON(data: data)
                
                let leagueDataArr = json["leagues"].arrayValue
                detailView.leagueData = Array<Leagues>()
                
                for leagueData in leagueDataArr
                {
                    detailView.leagueData.append(Leagues(data: leagueData))
                }
                
            }
            
        }
        
    }
    
    


}

