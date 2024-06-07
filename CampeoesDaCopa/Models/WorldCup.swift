//
//  WorldCup.swift
//  CampeoesDaCopa
//
//  Created by Vitoria Ortega on 07/06/24.
//

import Foundation

struct WorldCup: Codable {
    let year: Int
    let country: String
    let winner: String
    let vice: String
    let winnerScore: String
    let viceScore: String
    let matches: [Match]
}

struct Match: Codable {
    let stage: String
    let games: [Games]
}

struct Games: Codable {
    let home: String
    let away: String
    let score: String
    let date: String
}
