//
//  Episode.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/22/21.
//

import Foundation

struct Episode: Decodable {
    let episodeId: Int
    let title: String
    let season: String
    let episode: String
    
    var seasonNumber: Int { Int(season.trimmingCharacters(in: .whitespacesAndNewlines)) ?? 0 }
    var episodeNumber: Int { Int(episode.trimmingCharacters(in: .whitespacesAndNewlines)) ?? 0 }
}

//created my extension to be able to work with identifiable
extension Episode: Identifiable {
    var id: Int { episodeId }
}



