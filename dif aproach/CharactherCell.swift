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
        ZStack { //background layer of cell
            VStack(alignment: .leading) {
                WebImage(url: characthers.imgURL)
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: .fit)
                
                VStack(alignment: .center) {
                    Text(characthers.name)
                    .font(.headline)
                    
            
                    
                    Text(characthers .nickname)
                        .font(.headline)
                        .bold()
                        .padding(.horizontal,10)
                        .padding(.vertical,10)
                        .padding(.bottom,0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10).fill(Color.brandPrimary.opacity(0.50))
                                )
                        
                
            
                }//:end of 2vsatck
               // .padding(.horizontal, 8)
            }
            
        }//:end zstack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .brandPrimary,radius: 6, x:0.0, y:0.0)
        
    }
}

//struct CharactherCell_Previews: PreviewProvider {
  //  static var previews: some View {
    //    CharactherCell(characthers: Characthers()))
  //          .previewLayout(.sizeThatFits)
    //        .padding()
  //  }
//}
