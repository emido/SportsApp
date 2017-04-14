//
//  GameCell.swift
//  SportsApp
//
//  Created by A on 3/23/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import Foundation
import UIKit

class GameCell: UITableViewCell
{
       
    @IBOutlet weak var homeScoreLabel: UILabel!
    @IBOutlet weak var visitScoreLabel: UILabel!
    @IBOutlet weak var gameTimeLabel: UILabel!
    
    var homeLeagueName: UILabel?
    var visitLeagueName: UILabel?
    var homeLogo: UIImageView?
    var visitLogo: UIImageView?
    
    func setCompatitors(homeCity: String, homeName: String, homeImageURL: String, visitCity: String,  visitName: String, visitImageURL: String)
    {
        // Setup the homeLeageData
        let hURL = URL(string: homeImageURL)
        let hImageData = NSData(contentsOf: hURL!) as! Data
        let hImage = UIImage(data: hImageData)
        self.homeLogo = UIImageView(image: hImage)
        self.homeLogo?.frame = CGRect(x:10, y:2, width:40, height:40)
        
        self.homeLeagueName = UILabel(frame: CGRect(x:70, y:5, width:200, height:24))
        self.homeLeagueName?.text = "\(homeName) from \(homeCity)"
        
        
        // Setup the visitLeageData
        let vURL = URL(string: visitImageURL)
        let vImageData = NSData(contentsOf: vURL!) as! Data
        let vImage = UIImage(data: vImageData)
        self.visitLogo = UIImageView(image: vImage)
        self.visitLogo?.frame = CGRect(x:10, y:52, width:40, height:40)
        
        self.visitLeagueName = UILabel(frame: CGRect(x:70, y:52, width:200, height:24))
        self.visitLeagueName?.text = "\(visitName) from \(visitCity)"
        
        
        self.contentView.addSubview(homeLeagueName!)
        self.contentView.addSubview(homeLogo!)
        self.contentView.addSubview(visitLeagueName!)
        self.contentView.addSubview(visitLogo!)
    }
    
    
    
    
    
    
    
}
