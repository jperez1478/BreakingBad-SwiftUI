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
            List{
                        
                    
                }
                .navigationTitle("Episodes")
           
                }
            }
        }


//MARK: Preview
struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesView()
    }
}
