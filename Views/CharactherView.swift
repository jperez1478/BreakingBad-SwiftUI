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
    
    //show card view
    @State private   var isShowingDetail =  false
    
    
    //MARK: -Body
 
    var body: some View {
          NavigationView {
              ScrollView { //if content extends add scrollview effect
                  LazyVGrid(columns: gridItems,spacing: 10) {
                      ForEach(charactherViewModel.characthers) { characthers  in
                        NavigationLink(destination: CharactherDetailView(char: characthers) ,
                            label: {
                            CharactherCell(characthers: characthers)
                              
                                })
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
}

struct charactherView_Previews: PreviewProvider {
    static var previews: some View {
        charactherView()
    }
}


