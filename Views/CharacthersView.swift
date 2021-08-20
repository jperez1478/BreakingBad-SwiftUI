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
            ScrollView { //if content extends add scrollview effect
                LazyVGrid(columns: columns, content: {
                    ForEach(charactherViewModel.characthers) { characthers  in
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
                                }.padding()
                                        
                            })
                        }
                    }
                })
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
