//
//  RepostListCell.swift
//  GraphQL-Tutorial
//
//  Created by Булат Якупов on 28.03.2018.
//  Copyright © 2018 Булат Якупов. All rights reserved.
//

import Foundation
import UIKit

class ReposListCell: UITableViewCell {
    
    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var forkCount: UILabel!
    @IBOutlet weak var starButton: UIButton!
    
    var isStarred = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        starButton.addTarget(self, action: #selector(starTapped), for: .touchUpInside)
    }
    
    @objc func starTapped() {
        isStarred = !isStarred
        if isStarred {
            starButton.setImage(#imageLiteral(resourceName: "ic_full_star"), for: .normal)
        } else {
            starButton.setImage(#imageLiteral(resourceName: "ic_empty_star"), for: .normal)
        }
        
    }
}
