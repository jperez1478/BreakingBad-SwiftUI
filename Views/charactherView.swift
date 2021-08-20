//
//  charactherView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/20/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct charactherView: View {
    //MARK: - Properties
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var charactherViewModel = CharactherViewModel()
    
    
    //MARK: -Body
 
    var body: some View {
          NavigationView {
              ScrollView { //if content extends add scrollview effect
                  LazyVGrid(columns: gridItems,spacing: 10) {
                      ForEach(charactherViewModel.characthers) { characthers  in
                          CharactherCell(characthers: characthers)
                          
                              }
                          }
                  }
                //: end of nav
              .navigationTitle("Breaking Bad Cast")
              .onAppear {
                  charactherViewModel.fetchCharacters()
                  
              }
                  }
              }
}

struct charactherView_Previews: PreviewProvider {
    static var previews: some View {
        charactherView()
    }
}
