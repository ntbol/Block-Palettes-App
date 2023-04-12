//
//  BlocksUsedView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/12/23.
//

import SwiftUI

struct BlocksUsedView: View {

    
    var body: some View {

            HStack{
                Image("spruce_planks")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(5)
                    .padding(.trailing, 10)
                
                Text("Spruce Planks")
                    .bold().font(.title3)
            }
        }
}

struct BlocksUsedView_Previews: PreviewProvider {
    static var previews: some View {
        BlocksUsedView()
    }
}
