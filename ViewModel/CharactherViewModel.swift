//
//  CharactherViewModel.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import Foundation

//obersevable object responsable to be able to updated my views
class CharactherViewModel: ObservableObject {
    
    @Published var characther = [Characthers]()
    //Wrapping with @published upadte as change
    
    //responsiblke to provide characthers
    func fetchCharacters() {
       let url = URL(string: "https://www.breakingbadapi.com/api/characters")! //force unwrap
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
                
            } else {
                if let data = data {
                    let decoder = JSONDecoder() //Decode data
                    do {
                        let characther = try decoder.decode([Characthers].self, from: data)
                        DispatchQueue.main.async {
                            self.characther = characther
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
            
        }.resume() //end of url sessison 
    }
}
