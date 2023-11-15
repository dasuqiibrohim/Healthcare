//
//  ViewAttributes.swift
//  Healtcare
//
//  Created by eFishery on 15/11/23.
//

import Foundation

enum ViewAttributes {
    enum Color {
        case customRed
        case customBlue
        // Tambahkan warna lain jika diperlukan
    }
    
    enum FontType: String {
        case proximaNova100 = "proximanova-thin"
        case proximaNova300 = "proximanova-light"
        case proximaNova400 = "proximanova-regular"
        case proximaNova500 = "proximanova-medium"
        case proximaNova600 = "proximanova-semibold"
        case proximaNova700 = "proximanova-bold"
        case proximaNova800 = "proximanova-extrabold"
        case proximaNova900 = "proximanova-black"
        
        case gilroy100 = "gilroy-thin"
        case gilroy200 = "gilroy-ultralight"
        case gilroy300 = "gilroy-light"
        case gilroy400 = "gilroy-regular"
        case gilroy500 = "gilroy-medium"
        case gilroy600 = "gilroy-semibold"
        case gilroy700 = "gilroy-bold"
        case gilroy800 = "gilroy-extrabold"
        case gilroy900 = "gilroy-black"
    }
}
