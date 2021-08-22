//
//  SeasonCategory.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/22/21.
//

import Foundation

struct SeasonCategory: Identifiable {
    let id = UUID()
    let seasonNumber: Int
    let episodes: [Episode]
        
    var title: String { "Season \(seasonNumber)" }
}
