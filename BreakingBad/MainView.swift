//
//  ContentView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CharacthersView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home test")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
