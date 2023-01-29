//
//  ContentView.swift
//  SwiftUI_StateManagment
//
//  Created by Ibrahim on 1/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var favoriteNumber: Int = 42
    
    var body: some View {
        VStack {
            Text("Your favorite number is \(favoriteNumber)")
            NumberView(number: $favoriteNumber)
        }
        .padding()
    }
}

struct NumberView: View {
    @Binding var number: Int
    
    var body: some View {
        Stepper("\(number)", value: $number, in: 0...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
