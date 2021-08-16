//
//  Characthers.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import Foundation

struct Characthers: Decodable, Identifiable {
    var id: Int  
    var char_id: Int?
    var name: String
    var img: URL
    var status: String?
    var nickname: String?
    
}


