//
//  ContentView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            charactherView()
                .tabItem {
                    Label("Characthers", systemImage: "person.3")
                }
            
            EpisodesView()
                .tabItem {
                    Label("Episodes",systemImage: "play.rectangle")
                }
        }//:end of nav
        .accentColor(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
    }

