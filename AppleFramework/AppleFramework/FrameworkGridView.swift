//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by Anugrah on 14/01/25.
//

import SwiftUI

struct FrameworkGridView: View {
    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Framework")
        }
    }
}

#Preview {
    FrameworkGridView()
        
}

struct FrameworkTitleView: View{
    let framework: Framework
    var body: some View{
        VStack(spacing: 8){
            Image(framework.imageName, bundle: nil)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
