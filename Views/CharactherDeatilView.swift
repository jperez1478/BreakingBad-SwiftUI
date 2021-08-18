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
    var body: some View {
        ScrollView{
            WebImage(url: char.imgURL)
                .resizable()
                .indicator(.activity)
                .aspectRatio(contentMode: .fit)
            VStack {
                Text(char.nickname)
                    .font(.largeTitle)
                    .foregroundColor(.brandPrimary)
                    
                Text(char.status)
                    .font(.headline)

                
            }
            //hstack to display char info
            HStack {
                Text(char.name)
                    .font(.headline)
                    .foregroundColor(.brandPrimary)
    
                        }
        }
                }
            }
    



//struct CharactherDeatilView_Previews: PreviewProvider {
//    static var previews: some View {
 //       CharactherDeatilView()
//    }
//}
