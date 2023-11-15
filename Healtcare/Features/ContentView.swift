//
//  ContentView.swift
//  Healtcare
//
//  Created by eFishery on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.s1)
                Text("Hello, world!")
                    .customFont(.gilroy100, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy200, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy300, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy400, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy500, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy600, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy700, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy800, size: 12)
                Text("Hello, world!")
                    .customFont(.gilroy900, size: 12)
            }
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.s2)
                Text("Hello, world!")
                    .customFont(.inter100, size: 12)
                Text("Hello, world!")
                    .customFont(.inter200, size: 12)
                Text("Hello, world!")
                    .customFont(.inter300, size: 12)
                Text("Hello, world!")
                    .customFont(.inter400, size: 12)
                Text("Hello, world!")
                    .customFont(.inter500, size: 12)
                Text("Hello, world!")
                    .customFont(.inter600, size: 12)
                Text("Hello, world!")
                    .customFont(.inter700, size: 12)
                Text("Hello, world!")
                    .customFont(.inter800, size: 12)
                Text("Hello, world!")
                    .customFont(.inter900, size: 12)
            }
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
