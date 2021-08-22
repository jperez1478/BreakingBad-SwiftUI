//
//  EpisodesView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/22/21.
//

import SwiftUI
//MARK: -Properties
struct EpisodesView: View {
    
    @ObservedObject var episodesViewModel = EpisodesViewModel() //observable obj
    
    //MARK: -Body
    
    private var selectedEpisode: Episodes?
    
    var body: some View {
        NavigationView{
                List(episodesViewModel.episode){ episode  in
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("Season\(episode.season)")
                        })
                    Text(episode.episode)
                    
                }//subview of nav
                .listStyle(GroupedListStyle())
                .navigationTitle("Episodes")
                .foregroundColor(.brandPrimary)
                .onAppear {
                    episodesViewModel.fetchEpisodes()
                }
            }
        }
    }
      

//MARK: Preview
struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesView()
    }
}
