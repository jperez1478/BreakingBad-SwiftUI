//
//  Episodes.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import Foundation

struct Episodes: Decodable {
    let episodeId: Int
    let title: String
    let season: String
    let episode:String
   
    
}

extension Episodes: Identifiable {
    var id: Int { episodeId }
}


//created my own data to be able to add video function on her
