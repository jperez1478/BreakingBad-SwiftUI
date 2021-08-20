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
    @ObservedObject var quoteViewModel = QuoteViewModel()
    
    //colum propertiers
    let columns = [
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 1.2), //100 to 20 width
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 1.2), //2nd column
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 1.2), //3rd column
        
    ]
    
    
    
    //MARK: -Body
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(charactherViewModel.characthers) {characthers in
                        VStack {
                            NavigationLink(destination: CharactherDetailView(char: characthers),
                                label: {
                                VStack{
                                    VStack{
                                        WebImage(url: characthers.imgURL)
                                                .resizable()
                                                .indicator(.activity)
                                                .scaledToFill()
                                                .clipped()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 150)
                                                .cornerRadius(10)
                                            }
                                            Text(characthers.name).font(.system(size: 14)).foregroundColor(.brandPrimary).lineLimit(2)
                                    }
                                })
                        }
                }
            }
        }
            //: end of nav
            .navigationTitle("Breaking bad Cast")
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
