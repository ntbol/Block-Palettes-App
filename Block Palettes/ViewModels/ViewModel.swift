//
//  ViewModel.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/14/23.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var palettes: [Palette] = []
    
    func fetch() {
        guard let url = URL(string: "https://www.blockpalettes.com/api/index.php?key=IkFGEdNdhBCvYfnI6nxVhYuZm3nKIL") else {
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
