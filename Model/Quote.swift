//
//  Quote.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/18/21.
//

import Foundation


struct Quote: Decodable {
    let quote: Int
    let qoutes: String
  
    
    
}

extension Quote : Identifiable {
    var id: Int { quote }
}

