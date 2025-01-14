//
//  WeatherButton.swift
//  SwiftUI1
//
//  Created by Anugrah on 13/01/25.
//

import SwiftUI

struct weatherButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(Color.white)
            .cornerRadius(25)
            .font(.system(size: 16 , weight: .medium, design: .default))
    }
}
