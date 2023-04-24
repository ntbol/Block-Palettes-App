//
//  HomeView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/8/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = ViewModel()
    @Environment(\.openURL) var openURL
    
    var body: some View {
      
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    HStack{
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 75)
                            .padding()
        
                        
                        Spacer()
                        
                              
                    }
                    
                    VStack(alignment: .leading){
                        Text("Trending")
                            .bold().font(.title2)
                            .padding([.leading, .bottom], 20)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 20){
                            ForEach(viewModel.palettes, id: \.self) { palette in
                            
                                if (palette.featured == 1){
                                    HStack{
                                        NavigationLink(destination: SinglePaletteView(palette: palette)){
                                            CardView(palette: palette)
                                        }
                                    }
                                    .padding(3)
                                }
                            }
                        }
                        .padding(.leading, 20)
                        .padding([.top, .bottom], 60)
                        .onAppear {
                            viewModel.fetch()
                        }
                    }
                    .offset(x:0, y:-60)
                    
                    
                    
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Themes")
                                .bold().font(.title2)
                                .padding(.leading, 20)
                            
                            Spacer()
                            
                            Button("Browse All \(Image(systemName: "arrow.forward"))") {
                                openURL(URL(string: "google.com")!)
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                            .padding(15)
                            .bold()
                        }
                        FeaturedBlocksView()
                        
                    }
                    .offset(x:0, y:-90)
                    
                    VStack{
                        HStack{
                            Text("More Palettes")
                                .bold().font(.title2)
                                .padding(.leading, 20)
                            
                            Spacer()
                            
                            NavigationLink(destination: BrowseAllView()) {
                                Text("Browse All \(Image(systemName: "arrow.forward"))")
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                            .padding(15)
                            .bold()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 20, content: {
                               
                                ForEach(viewModel.palettes, id: \.self) { palette in
                                
                                    if(1...12 ~= palette.id) {
                                        HStack{
                                            NavigationLink(destination: SinglePaletteView(palette: palette)){
                                                CardView(palette: palette)
                                            }
                                        }
                                        .padding(3)
                                    }
                                }
                            })
                            .padding(.leading, 20)
                            .padding([.top, .bottom], 20)
                        }
                        .offset(x:0, y:-20)
                    }
                    .offset(x:0, y:-60)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
