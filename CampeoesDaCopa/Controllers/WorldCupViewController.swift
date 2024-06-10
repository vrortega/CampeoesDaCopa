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
    @IBOutlet weak var tableView: UITableView!
    
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

extension WorldCupViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        cell.prepare(with: game)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        return match.stage

    }
}

extension WorldCupViewController: UITableViewDelegate {
    
}
