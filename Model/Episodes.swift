//
//  Episodes.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import Foundation

struct episodes: Decodable, Identifiable{
    var id: Int?
    var episode_id: Int
    var title: String
    var season: String 
    var episode:String
    
}
