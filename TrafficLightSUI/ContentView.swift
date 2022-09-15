//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Алексей Гайдуков on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var colorsActive = [true, false, false]
    
    var body: some View {
        VStack {
            ZStack {
                Color(.secondarySystemFill)
                    .frame(width: 200, height: 500)
                    .cornerRadius(10)
                VStack {
                    CircleColorView(color: .red, isActiv: colorsActive[0])
                    CircleColorView(color: .yellow, isActiv: colorsActive[1])
                    CircleColorView(color: .green, isActiv: colorsActive[2])
                }
            }
            Spacer()
            Button(action: { self.changeActiveColor() }) {
                Text("Start")
                    .font(.title)
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
    private func changeActiveColor() {
        for index in 0 ..< colorsActive.count {
            if colorsActive[index] == true {
                colorsActive[index].toggle()
                if index + 1 < colorsActive.count {
                    colorsActive[index + 1].toggle()
                } else {
                    colorsActive[0].toggle()
                }
                return
            }
        }
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

