//
//  WorldCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Vitoria Ortega on 07/06/24.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    var worldCup: WorldCup!
    @IBOutlet weak var winnerIv: UIImageView!
    @IBOutlet weak var viceIv: UIImageView!
    @IBOutlet weak var scoreLb: UILabel!
    @IBOutlet weak var viceLb: UILabel!
    @IBOutlet weak var winnerLb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Worldup \(worldCup.year)"
        winnerIv.image = UIImage(named: "\(worldCup.winner).png")
        viceIv.image = UIImage(named: "\(worldCup.vice).png")
        winnerLb.text = worldCup.winner
        viceLb.text = worldCup.vice
        scoreLb.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"

        

    }
}
