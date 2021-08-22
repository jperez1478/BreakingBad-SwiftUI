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

//created my extension to be able to work with identifiable 
extension Episodes: Identifiable {
    var id: Int { episodeId }
}



