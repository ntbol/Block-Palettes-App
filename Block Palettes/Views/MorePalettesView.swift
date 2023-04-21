//
//  MorePalettesView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/21/23.
//

import SwiftUI

struct MorePalettesView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
            VStack(spacing: 0){
                let randomInt = Int.random(in: 3..<10000)
                let lowInt = randomInt - 13
                ForEach(viewModel.palettes, id: \.self) { palette in
                    
                    if(lowInt...randomInt ~= palette.id) {
                        NavigationLink(destination: SinglePaletteView(palette: palette)){
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

struct MorePalettesView_Previews: PreviewProvider {
    static var previews: some View {
        MorePalettesView()
    }
}
