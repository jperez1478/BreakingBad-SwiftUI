//
//  CharactherDeatilView.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/17/21.
//

import SwiftUI


import SwiftUI
import SDWebImageSwiftUI

struct CharactherDetailView: View  {
    var char: Characthers
   // var quotes: Quote
    var body: some View {
        ScrollView{
            VStack {
                WebImage(url: char.imgURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height : 220)
              Spacer()
                
                VStack {
                   
                    Text(char.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack(alignment: .center) {
                        VStack {
                            Text("Status")
                                .bold()
                                .font(.caption)
                            Text("\(char.status)")
                        }
                        
                    }
                    
                    
                    
                }
                
                
            }//: end of Vstack
            .frame(width: 300, height: 525)
            .background(Color.cellColor)
                      .cornerRadius(12)
                      .shadow(color: .brandPrimary,radius: 10)
                
            }
    }
}
    



