//
//  EpisodeViewModel.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import Foundation

//obersevable object responsable to be able to updated my views
class EpisodesViewModel: ObservableObject {
    
    @Published var episodes = [Episodes]()
    //Wrapping with @published upadte as change
    
    //responsiblke to provide characthers
    func fetchEpisodes() {
       let url = URL(string: "https://breakingbadapi.com/api/episodes")! //force unwrap
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error { //unwrap error
                print(error.localizedDescription) //print error
            } else { //if no error
                if let data = data {
                    let decoder = JSONDecoder() //Decode data
                    decoder.keyDecodingStrategy = .convertFromSnakeCase //to work with the camel case i had in api
                    do {
                        let episodes = try decoder.decode([Episodes].self, from: data)
                        DispatchQueue.main.async {
                            self.episodes = episodes
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
            
        }.resume() //end of url sessison
    }
}
