//
//  CharacthersView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/15/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct CharacthersView: View {
    //MARK: -Properties
    
    @ObservedObject var charactherViewModel = CharactherViewModel() //observed object
    
    //colum propertiers
    let columns = [
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16), //100 to 20 width
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16), //2nd column
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16), //3rd column
        
    ]
    
    
    
    //MARK: -Body
    var body: some View {
        NavigationView {
            ScrollView { //if content extends add scrollview effect
                LazyVGrid(columns: columns, content: {
                    ForEach(charactherViewModel.characthers) { characthers  in
                        
                        //adding navlink
                        NavigationLink(
                            destination: CharactherDetailView(char: characthers),
                            label: {
                                    WebImage(url: characthers.imgURL)
                                        .resizable()
                                        .indicator(.activity)
                                        .scaledToFill()
                                        .clipped()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 150)
                                        .cornerRadius(8)
                            })
                      
                    }
                })
                .padding()
            } //: end of nav
            .navigationTitle("Breaking Bad Cast")
            .onAppear {
                charactherViewModel.fetchCharacters()
            }
        }
    }
}


//MARK: -Preview
struct CharacthersView_Previews: PreviewProvider {
    static var previews: some View {
        CharacthersView()
    }
}
