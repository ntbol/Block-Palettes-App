//
//  PaletteListView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/9/23.
//

import SwiftUI

struct PaletteListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                VStack(spacing: 0){
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
                .padding([.leading, .bottom], 20)
                .padding(.trailing, 5)
                
                //Additional data
                VStack(spacing: 0){
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
                .padding([.trailing, .bottom], 20)
                .padding(.leading, 5)
            }
        }
    }
}

struct PaletteListView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteListView()
    }
}
