//
//  SinglePaletteView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/12/23.
//

import SwiftUI

struct SinglePaletteView: View {
    @StateObject var viewModel = ViewModel()
    let palette: Palette
    
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
              
                 
                }
                
                VStack(alignment: .leading, spacing: 0){
                    
                    VStack{
                        HStack(spacing: 0) {
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockOne).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockTwo).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockThree).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                
                            } placeholder: {
                                ProgressView()
                            }
                        }
                    }
                    VStack{
                        HStack(spacing: 0) {
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockFour).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockFive).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockSix).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                
                            } placeholder: {
                                ProgressView()
                            }
                        }
                    }
                }
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 8)
                .padding([.leading, .trailing], 20)
                
                HStack{
                    Text("Palette #\(palette.id)")
                        .bold().font(.title)
                    
                    Spacer()
                    
                    Button("\(Image(systemName: "heart.fill")) 231") {
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    .bold()
                }
                .padding([.leading, .trailing], 20)
                .padding(.top, 15)
                
                HStack{
                    Image("lime_terracotta")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .cornerRadius(5)
                    Text("MinecraftFan123")
                        .bold()
                    
                    Spacer()
                    
                    Text("3 months ago")
                }
                .padding([.leading, .trailing], 20)
                .padding(.bottom, 30)
                
                VStack(alignment: .leading){
                    Text("Blocks Used")
                        .bold().font(.title2)
                    
                    BlocksUsedView()
                    BlocksUsedView()
                    BlocksUsedView()
                    BlocksUsedView()
                    BlocksUsedView()
                    BlocksUsedView()
                    
                }
                .padding([.leading, .trailing], 20)
            }
        }
    }
}

struct SinglePaletteView_Previews: PreviewProvider {
    static var previews: some View {
        SinglePaletteView(palette: Palette.samplePalette)
            .environmentObject(ViewModel())
    }
}
