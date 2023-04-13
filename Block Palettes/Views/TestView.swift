//
//  TestView.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/13/23.
//

import SwiftUI

struct Palette: Codable, Hashable {
    var blockOne: String
}

class ViewModel: ObservableObject {
    @Published var palettes: [Palette] = []
    
    func fetch() {
        guard let url = URL(string: "http://localhost/dataapi/api.php") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in guard let data = data, error == nil else {
                return
            }
            
            do {
                let palettes = try JSONDecoder().decode([Palette].self, from: data)
                DispatchQueue.main.async {
                    self?.palettes = palettes
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}


struct TestView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.palettes, id: \.self) { palette in
                    HStack{
                        AsyncImage(url: URL(string: "https://www.blockpalettes.com/img/block/\(palette.blockOne).png"))
                            .frame(width: 20, height: 20)
                        Text(palette.blockOne)
                    }
                    .padding(3)
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
