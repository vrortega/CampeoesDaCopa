//
//  WorldCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Vitoria Ortega on 07/06/24.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    var worldCup: WorldCup!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Ano da copa selecionada: \(worldCup.year)")
    }
}
