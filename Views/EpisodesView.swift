//
//  EpisodesView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/22/21.
//


import SwiftUI
//MARK: -Properties
struct EpisodesView: View {
        
        @StateObject var episodesViewModel = EpisodesViewModel() //observable obj
        
    
        //MARK: -Body
        var body: some View {
            NavigationView{
                List {
                    ForEach(episodesViewModel.groupedEpisodes) { season in
                        Section(header: Text(season.title)) {
                            ForEach(season.episodes) { episode in
                                Text(episode.title)
                                    
                            }
                        }
                    }
                
                }
                .listStyle(InsetGroupedListStyle())
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

