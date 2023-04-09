//
//  ContentView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HomeView()
        }
        .preferredColorScheme(.light)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
