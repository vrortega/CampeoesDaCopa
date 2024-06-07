//
//  WinnersTableViewController.swift
//  CampeoesDaCopa
//
//  Created by Vitoria Ortega on 07/06/24.
//

import UIKit

class WinnersTableViewController: UITableViewController {
    
    var worldCups: [WorldCup] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        loadWorldCups()
    }
    
    func loadWorldCups() {
        guard let fileURL = Bundle.main.url(forResource: "winners", withExtension: "json") else {
            print("Arquivo nao encontrado")
            return
        }
        do {
            let jsonData = try Data(contentsOf: fileURL)
            worldCups = try JSONDecoder().decode([WorldCup].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
        }
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worldCups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let worldCup = worldCups[indexPath.row]
        cell.textLabel?.text = "Copa \(worldCup.year) - \(worldCup.country)"
        cell.detailTextLabel?.text = "\(worldCup.winner) vs \(worldCup.vice)"
        if let image = UIImage(named: "\(worldCup.winner).png"){
            cell.imageView?.image = image
        } else {
            cell.imageView?.image = UIImage(named: "default.png")
        }
      
        return cell
    }
}
