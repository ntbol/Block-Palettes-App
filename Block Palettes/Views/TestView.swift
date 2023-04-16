//
//  TestView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/13/23.
//

import SwiftUI


struct TestView: View {
    
    @StateObject var viewModel = ViewModel()

    var body: some View {
        var randomInt = Int.random(in: 3..<10000)
        var lowInt = randomInt - 13
        NavigationView{
            List {
                ForEach(viewModel.palettes, id: \.self) { palette in
                    if(lowInt...randomInt ~= palette.id) {
                        HStack{
                            NavigationLink(destination: SinglePaletteView(palette: palette)){
                                AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockOne).png"))
                                    .frame(width: 20, height: 20)
                                Text(palette.blockOne)
                            }
                        }
                        .padding(3)
                    }
                }
            }
            .navigationTitle("Palettes")
            .onAppear {
                viewModel.fetch()
            }
            
            

        }
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
