//
//  CardView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/8/23.
//

import SwiftUI

struct CardView: View {
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
                    Image("ochre_froglight")
                        .interpolation(.none)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    
                    Image("jungle_log")
                        .interpolation(.none)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    
                    Image("lime_terracotta")
                        .interpolation(.none)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                }
            }
            VStack{
                HStack(spacing: 0) {
                    Image("raw_gold_block")
                        .interpolation(.none)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    
                    Image("spruce_planks")
                        .interpolation(.none)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    
                    Image("moss_block")
                        .interpolation(.none)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
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
            withAnimation(.linear(duration: 0.4)) {
                self.fadeIn.toggle()
            }
        }
    }
}

//MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}



