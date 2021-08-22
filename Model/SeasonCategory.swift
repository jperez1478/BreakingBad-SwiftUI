//
//  SeasonCategory.swift
//  BreakingBad
//
//  Created by Mike Schoonen on 22/08/2021.
//

import Foundation

struct SeasonCategory: Identifiable {
    let id = UUID()
    let seasonNumber: Int
    let episodes: [Episode]
        
    var title: String { "Season \(seasonNumber)" }
}
