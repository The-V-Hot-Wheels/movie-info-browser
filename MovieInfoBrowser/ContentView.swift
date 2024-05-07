//
//  ContentView.swift
//  MovieInfoBrowser
//
//  Created by Alonso del Arte on 5/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var movieID = "0119654"
    var body: some View {
        VStack {
            HStack {
                Text("Movie ID tt")
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $movieID)
            }
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
