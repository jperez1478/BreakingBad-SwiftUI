//
//  CharactherCell.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/20/21.
//

import SwiftUI
import SDWebImageSwiftUI



struct CharactherCell: View {
    let characthers: Characthers
   // var char: Characthers

        var body: some View {
                VStack{
                      WebImage(url: characthers.imgURL)
                                    .resizable()
                                    .indicator(.activity)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100 ,height: 200)
                    
                    Text(characthers.name.capitalized)
                        .foregroundColor(.black)
                        .lineLimit(3)
                        .clipped()
                        .padding(.horizontal,0)

                   
                      HStack(alignment: .bottom){
                      Text(characthers .nickname)
                         .foregroundColor(.black)
                         .bold()
                        .lineLimit(2)
                        .padding(.horizontal,10)
                        .padding(.vertical,15)
                        .padding(.bottom,0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10).fill(Color.cellColor.opacity(0.15)))
                            .clipped()
                        
                        Spacer()
                      }
                    
                  }.frame(width: 126 ,height: 260)
                  .background(Color.brandPrimary)
                          .cornerRadius(12)
                          .shadow(color: .brandPrimary,radius: 8, x:0.0, y:0.0)
 
                  
              }
          }

//struct CharactherCell_Previews: PreviewProvider {
  //  static var previews: some View {
    //    CharactherCell(characthers: Characthers()))
  //          .previewLayout(.sizeThatFits)
    //        .padding()
  //  }
//}
