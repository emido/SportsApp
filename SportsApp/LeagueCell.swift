//
//  LeagueCell.swift
//  SportsApp
//
//  Created by A on 3/22/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import Foundation
import UIKit

class LeagueCell: UITableViewCell
{
    var leagueName: UILabel?
    var logo: UIImageView?
    
    
    func setCell(name: String, imageURL: String)
    {
        self.leagueName = UILabel(frame: CGRect(x:70, y:10, width:100, height:24))
        self.leagueName?.text = name
        
        let url = URL(string: imageURL)
        let imageData = NSData(contentsOf: url!) as! Data
        let image = UIImage(data: imageData)
        self.logo = UIImageView(image: image)
        self.logo?.frame = CGRect(x:10, y:2, width:40, height:40)

        
        self.contentView.addSubview(leagueName!)
        self.contentView.addSubview(logo!)
    }
    
    
    
    
    
}
