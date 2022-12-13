//
//  Source.swift
//  marvel-vk
//
//  Created by user225687 on 12/13/22.
//

import UIKit

struct Hero {
    var name: String
    var profilePic: String
}

extension Hero{
    static func listHeroes() -> [Hero] {
        let loki = Hero(name: "Loki", profilePic:"loki")
        let spiderMan = Hero(name: "SpiderMan", profilePic: "spider_man")
        let dareDevil = Hero(name: "Dare Devil", profilePic: "daredevil")
        let captainAmerica = Hero(name: "Captain America", profilePic: "captain_america")
        let shangChi = Hero(name: "Shang Chi", profilePic: "shang_chi")
    return [loki,spiderMan,dareDevil,captainAmerica,shangChi]
    }
}
