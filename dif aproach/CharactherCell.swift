//
//  CharactherCell.swift
//  BreakingBad
//
//  Created by Jessica Perez on 8/20/21.
//

import SwiftUI
import SDWebImageSwiftUI



struct CharactherCell: View {
   // var char: Characthers
    var body: some View {
        
        ZStack { //background layer of cell
            VStack(alignment: .leading, spacing: 0) {
                Image("icon")
                    .resizable()
                    .scaledToFill()
                    .padding(5)
                    .clipped()
                    .frame(width: 200, height: 200)
                
                VStack(alignment: .center, spacing: 0  ) {
                   Text("Walter White")
                    .frame(width: 200, height: 40, alignment: .center)
                    
                    HStack{
                            Text("Heinsenburg")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 200, height: 40, alignment: .center)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20).fill(Color.brandPrimary.opacity(0.50))
                                    )
                                .frame(width: 100, height: 100)
                    }
                    
                }
            }
            
        }//:end zstack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .brandPrimary,radius: 6, x:0.0, y:0.0)
        
    }
}

struct CharactherCell_Previews: PreviewProvider {
    static var previews: some View {
        CharactherCell()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
