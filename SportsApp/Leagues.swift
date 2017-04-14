//
//  Leagues.swift
//  SportsApp
//
//  Created by A on 3/21/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import Foundation

class Leagues
{
    var name: String
    var imageURL: String
    var games: Array<Games>!
    
    init(data:JSON)
    {
        name = data["name"].stringValue
        imageURL = data["image"].stringValue
        let gamesJSONData = data["games"].arrayValue
        games = Array<Games>()
        
        for game in gamesJSONData
        {
            games.append(Games(data:game))
        }
    }
}
