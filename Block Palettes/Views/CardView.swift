//
//  CardView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/8/23.
//

import SwiftUI
import CachedAsyncImage

struct CardView: View {
    @StateObject var viewModel = ViewModel()
    let palette: Palette
    
    
    //MARK: - Properties
    
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    @State private var showAlert: Bool = false
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
        
    //MARK: - CARD
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            VStack{
                HStack(spacing: 0) {

                    CachedAsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockOne).png")) { image in
                        image
                            .interpolation(.none)
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    CachedAsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockTwo).png")) { image in
                        image
                            .interpolation(.none)
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    
                    CachedAsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockThree).png")) { image in
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
                    CachedAsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockFour).png")) { image in
                        image
                            .interpolation(.none)
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    CachedAsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockFive).png")) { image in
                        image
                            .interpolation(.none)
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fit)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    CachedAsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockSix).png")) { image in
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
                    Text("Palette #12821")
                    Spacer()
                    Text("\(Image(systemName: "heart"))342")
                        .bold()
                }
                .padding([.leading, .trailing], 15)
                .padding([.top, .bottom], 5)
            }
            */
        }
        .frame(width: 250, height: .infinity)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 8)
        .onAppear {
            withAnimation(.linear(duration: 1)) {
                self.fadeIn.toggle()
            }
        }
    }
}

//MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(palette: Palette.samplePalette)
            .environmentObject(ViewModel())
    }
}



