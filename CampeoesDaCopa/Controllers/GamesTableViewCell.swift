//
//  GamesTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Vitoria Ortega on 09/06/24.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    @IBOutlet weak var homeIv: UIImageView!
    @IBOutlet weak var awayIv: UIImageView!
    @IBOutlet weak var homeLb: UILabel!
    @IBOutlet weak var awayLb: UILabel!
    @IBOutlet weak var scoreLb: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func prepare(with game: Game){
        homeIv.image = UIImage(named: "\(game.home).png")
        awayIv.image = UIImage(named: "\(game.away).png")
        homeLb.text = game.home
        awayLb.text = game.away
        scoreLb.text = game.score

        
    }

}
