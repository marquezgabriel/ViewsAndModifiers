//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Gabriel Marquez on 2022-06-03.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}


extension View {
    func title() -> some View {
        modifier(TitleModifier())
        
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .title()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
