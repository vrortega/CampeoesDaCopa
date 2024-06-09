//
//  WorldCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Vitoria Ortega on 07/06/24.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    @IBOutlet weak var yearLb: UILabel!
    @IBOutlet weak var winnerIv: UIImageView!
    @IBOutlet weak var viceIv: UIImageView!
    @IBOutlet weak var winnerLb: UILabel!
    @IBOutlet weak var viceLb: UILabel!
    @IBOutlet weak var winnerScoreLb: UILabel!
    @IBOutlet weak var viceScoreLb: UILabel!
    @IBOutlet weak var countryLb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func prepare(with cup: WorldCup) {
        yearLb.text = "\(cup.year)"
        winnerIv.image = UIImage(named: cup.winner)
        viceIv.image = UIImage(named: cup.vice)
        winnerLb.text = cup.winner
        viceLb.text = cup.vice
        countryLb.text = cup.country
        winnerScoreLb.text = cup.winnerScore
        viceScoreLb.text = cup.viceScore
    }

}
