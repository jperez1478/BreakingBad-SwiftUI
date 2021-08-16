//
//  CharactherViewModel.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import Foundation

//obersevable object responsable to be able to updated my views
class CharactherViewModel: ObservableObject {
    
    @Published var characthers = [Characthers]()
    //Wrapping with @published upadte as change
    
    //responsiblke to provide characthers
    func fetchCharacters() {
       let url = URL(string: "https://breakingbadapi.com/api/characters")! //force unwrap
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error { //unwrap error
                print(error.localizedDescription) //print error
            } else { //if no error
                if let data = data {
                    let decoder = JSONDecoder() //Decode data
                    //decoder.keyDecodingStrategy = .convertFromSnakeCase //to work with the camel case i had in api 
                    do {
                        let characthers = try decoder.decode([Characthers].self, from: data)
                        DispatchQueue.main.async {
                            self.characthers = characthers
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
            
        }.resume() //end of url sessison 
    }
}
