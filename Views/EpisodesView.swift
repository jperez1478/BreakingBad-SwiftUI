//
//  EpisodesView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/18/21.
//

import SwiftUI
//MARK: -Properties

struct EpisodesView: View {
    
    @ObservedObject var episodesViewModel = EpisodesViewModel() //observable obj
    

    
    
    //MARK: -Body
    var body: some View {
        NavigationView{
            ZStack{
                List {
                    ForEach(episodesViewModel.episode) { episode in
                        VStack(alignment: .leading) {
                            Text("Season\(episode.season)")
                                .font(.title2)
                            Text("Episode\(episode.episode)")
                                .font(.subheadline)
                                
                            
                            HStack {
                                Text(episode.title).lineLimit(1)
                                    .font(.headline)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Episodes")
            .onAppear {
        episodesViewModel.fetchEpisodes()
            }
        }

           
                }
            }
      // }


//MARK: Preview
struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesView()
    }
}
