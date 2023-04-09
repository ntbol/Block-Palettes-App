//
//  HomeView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/8/23.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading){
                HStack{
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 75)
                        .padding()
                    
                    
                    Spacer()
                    
                    Button("View All") {
                        openURL(URL(string: "google.com")!)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .padding(15)
                    .bold()
                }
                
                VStack{
                    Text("Trending")
                        .bold().font(.title2)
                        .padding(.leading, 20)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 20, content: {
                        CardView()
                        CardView()
                        CardView()
                        CardView()
                        CardView()
                    })
                    .padding(.leading, 20)
                    .padding([.top, .bottom], 60)
                }
                .offset(x:0, y:-60)
                
                VStack(alignment: .leading){
                    Text("Browse By Theme")
                        .bold().font(.title2)
                        .padding(.leading, 20)
                    
                    FeaturedBlocksView()
                
                }
                .offset(x:0, y:-80)
                
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
