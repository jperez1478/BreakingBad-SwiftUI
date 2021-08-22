//
//  EpisodesViewModel.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/22/21.
//

import Foundation
import Foundation

//obersevable object responsable to be able to updated my views
class EpisodesViewModel: ObservableObject {
    
    @Published var groupedEpisodes: [SeasonCategory] = []
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
                        let episodes = try decoder.decode([Episode].self, from: data)
                        DispatchQueue.main.async{
                            let dictionary = Dictionary(grouping: episodes) { $0.seasonNumber }
                            let sortedDictionary = dictionary.sorted { $0.key < $1.key }
                            let groupedEpisodes = sortedDictionary.compactMap { SeasonCategory(seasonNumber: $0.key, episodes: $0.value) }
                            self.groupedEpisodes = groupedEpisodes
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                }
            }
            
        }.resume() //end of url sessison
    }
}
