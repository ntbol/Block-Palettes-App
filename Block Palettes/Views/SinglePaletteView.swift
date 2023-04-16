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
                        Text(verbatim: "Palette #\(palette.id)")
                            .bold().font(.title)
                        
                        Spacer()
                        
                        Text("3 months ago")
                    }
                    .padding([.leading, .trailing], 20)
                    .padding([.top, .bottom], 15)
                    
                    
                    VStack(alignment: .leading){
                        Text("Blocks Used")
                            .bold().font(.title2)
                        
                        //Block One
                        HStack{
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockOne).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                                    .padding(.trailing, 10)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            let blockOne = palette.blockOne
                            let formattedBlockOne = blockOne.replacingOccurrences(of: "_", with: " ", options: .literal, range: nil)
                            Text(formattedBlockOne.capitalized)
                                .font(.title3)
                        }
                        
                        //Block Two
                        HStack{
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockTwo).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                                    .padding(.trailing, 10)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            let blockTwo = palette.blockTwo
                            let formattedBlockTwo = blockTwo.replacingOccurrences(of: "_", with: " ", options: .literal, range: nil)
                            Text(formattedBlockTwo.capitalized)
                                .font(.title3)
                        }
                        
                        //Block Three
                        HStack{
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockThree).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                                    .padding(.trailing, 10)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            let blockThree = palette.blockThree
                            let formattedBlockThree = blockThree.replacingOccurrences(of: "_", with: " ", options: .literal, range: nil)
                            Text(formattedBlockThree.capitalized)
                                .font(.title3)
                        }
                        
                        //Block Four
                        HStack{
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockFour).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                                    .padding(.trailing, 10)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            let blockFour = palette.blockFour
                            let formattedBlockFour = blockFour.replacingOccurrences(of: "_", with: " ", options: .literal, range: nil)
                            Text(formattedBlockFour.capitalized)
                                .font(.title3)
                        }
                        
                        //Block Five
                        HStack{
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockFive).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                                    .padding(.trailing, 10)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            let blockFive = palette.blockFive
                            let formattedBlockFive = blockFive.replacingOccurrences(of: "_", with: " ", options: .literal, range: nil)
                            Text(formattedBlockFive.capitalized)
                                .font(.title3)
                        }
                        
                        //Block Six
                        HStack{
                            AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockSix).png")) { image in
                                image
                                    .interpolation(.none)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                                    .padding(.trailing, 10)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                            let blockSix = palette.blockSix
                            let formattedBlockSix = blockSix.replacingOccurrences(of: "_", with: " ", options: .literal, range: nil)
                            Text(formattedBlockSix.capitalized)
                                .font(.title3)
                        }
                        
                    }
                    .padding([.leading, .trailing, .bottom], 20)
                    
                    VStack(alignment: .leading){
                        Text("More Palettes")
                            .bold().font(.title2)
                    }
                    .padding(20)
                    
                    VStack{
                        let randomInt = Int.random(in: 3..<10000)
                        let lowInt = randomInt - 13
                        ForEach(viewModel.palettes, id: \.self) { palette in
                            
                            if(lowInt...randomInt ~= palette.id) {
                                VStack{
                                    NavigationLink(destination: SinglePaletteView(palette: palette)){
                                        PaletteListView(palette: palette)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .preferredColorScheme(.light)
    }
}

struct SinglePaletteView_Previews: PreviewProvider {
    static var previews: some View {
        SinglePaletteView(palette: Palette.samplePalette)
            .environmentObject(ViewModel())
    }
}
