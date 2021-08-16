//
//  Characthers.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import Foundation

struct Characthers: Decodable {
    let charId: Int
    let name: String
    let occupation:[String]
    let img: String
    let status: String
    let nickname: String
    
    var imgURL:URL {
        URL(string:img)!
    }
}

extension Characthers : Identifiable {
    var id: Int { charId }
}

