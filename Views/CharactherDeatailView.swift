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
  
 var  char: Characthers
   // var quotes: Quote
    var body: some View {
        VStack {
                VStack{
                    WebImage(url: char.imgURL)
                        .resizable()
                        .indicator(.activity)
                        .scaledToFill()
                        .clipped()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 380)
                        .cornerRadius(8)
                } //.frame(width: 150)
                

                VStack {
                    Text(char.name)
                        .font(.title)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical,4)
                        .overlay(
                            Rectangle()
                                .fill(Color.white)
                                .frame(height:1),
                                alignment: .bottom
                            )


                        Text("Status")
                            .font(.headline)
                            .foregroundColor(.black)


                        Text("\(char.status)")
                            .foregroundColor(.black)
                            .padding(.bottom,30)
                    }
                



                    Spacer()
                }//: end of Vstack
              .frame(width: 300, height: 525) //structure of card view
             .background(Color.cellColor)
                        .cornerRadius(12)
                        .shadow(color: .brandPrimary,radius: 10)
    }
    
}
            

  
