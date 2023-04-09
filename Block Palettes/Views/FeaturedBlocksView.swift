//
//  FeaturedBlocksView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/8/23.
//

import SwiftUI

struct FeaturedBlocksView: View {
    var body: some View {
        VStack{
            VStack{
                HStack (spacing: 20){
                    VStack{
                        Image("castle")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 8)
                        
                        Text("Mideval")
                            .bold()
                    }
                    VStack{
                        Image("tree")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 8)
                        
                        Text("Organic")
                            .bold()
                    }
                    VStack{
                        Image("magic")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 8)
                        
                        Text("Fantasy")
                            .bold()
                    }
                }
                .padding([.leading, .trailing], 20)
            }
        }
    }
}

struct FeaturedBlocksView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedBlocksView()
    }
}
