//
//  PaletteModel.swift
//  Block Palettes
//
//  Created by Nathan Boland on 4/14/23.
//

import Foundation

struct PalettePage: Codable {
    let count: Int
    let next: String
    let results: [Palette]
}


struct Palette: Codable, Hashable {
    var blockOne: String
    var blockTwo: String
    var blockThree: String
    var blockFour: String
    var blockFive: String
    var blockSix: String
    var featured: Int
    var id: Int
    
    static var samplePalette = Palette(blockOne: "cut_sandstone", blockTwo: "stripped_birch_log", blockThree: "light_blue_terracotta", blockFour: "cut_red_sandstone", blockFive: "stripped_dark_oak_log", blockSix: "blue_terracotta", featured: 1, id: 123)
}



