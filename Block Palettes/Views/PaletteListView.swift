//
//  PaletteListView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/9/23.
//

import SwiftUI

struct PaletteListView: View {
    @StateObject var viewModel = ViewModel()
    let palette: Palette
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                VStack(spacing: 0){
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
                    
                /*
                    VStack{
                        HStack{
                            Text("#12821")
                                .bold()
                            Spacer()
                            Text("\(Image(systemName: "heart"))342")
                                .bold()
                        }
                        .padding([.leading, .trailing], 10)
                        .padding([.top, .bottom], 5)
                    }
                 */
                     
                }
                .frame(width: .infinity, height: .infinity)
                .background(.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 8)
                .padding([.leading, .trailing, .bottom], 20)
                
            }
        }
    }
}

struct PaletteListView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteListView(palette: Palette.samplePalette)
            .environmentObject(ViewModel())
    }
}
