//
//  BrowseAllView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/24/23.
//

import SwiftUI

struct BrowseAllView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    HStack{
                        Text("Filters")
                            .bold().font(.title2)
                        
                        Spacer()
                    }
                }
                .padding(20)
                VStack(spacing: 0){
                    let randomInt = Int.random(in: 3..<10000)
                    let lowInt = randomInt - 13
                    ForEach(viewModel.palettes, id: \.self) { palette in
                        
                        if(lowInt...randomInt ~= palette.id) {
                            NavigationLink(destination: SinglePaletteView(palette: palette).navigationBarBackButtonHidden(true)){
                                PaletteListView(palette: palette)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .onAppear {
                    viewModel.fetch()
                }
            }
        }
    }
}

struct BrowseAllView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseAllView()
    }
}
