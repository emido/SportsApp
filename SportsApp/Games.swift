//
//  Games.swift
//  SportsApp
//
//  Created by A on 3/21/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import Foundation

class Games
{
    var gameState: String
    var gameTime: Int
    var homeTeamCity: String
    var homeTeamName: String
    var homeTeamScore: Int
    var homeTeamLogoURL: String
    var visitTeamCity: String
    var visitTeamName: String
    var visitTeamScore: Int
    var visitTeamLogoURL: String
    
    init(data:JSON)
    {
        gameState = data["game_state"].stringValue
        gameTime = data["game_time"].intValue
        homeTeamCity = data["home_team_city"].stringValue
        homeTeamName = data["home_team_name"].stringValue
        homeTeamScore = data["home_team_score"].intValue
        homeTeamLogoURL = data["home_team_logo"].stringValue
        visitTeamCity = data["visit_team_city"].stringValue
        visitTeamName = data["visit_team_name"].stringValue
        visitTeamScore = data["visit_team_score"].intValue
        visitTeamLogoURL = data["visit_team_logo"].stringValue
    }
}
