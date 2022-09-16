//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Алексей Гайдуков on 14.09.2022.
//

import SwiftUI
enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "Start"
    
    @State private var redColor = 0.3
    @State private var yellowColor = 0.3
    @State private var greenColor = 0.3
    
    @State private var currenColor = CurrentLight.red
    
    private func nextColor() {
        let isOn = 1.0
        let isOff = 0.3
        
        switch currenColor {
        case .red:
            currenColor = .yellow
            greenColor = isOff
            redColor = isOn
        case .yellow:
            currenColor = .green
            redColor = isOff
            yellowColor = isOn
        case .green:
            currenColor = .red
            yellowColor = isOff
            greenColor = isOn
            
        }
    }
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 15) {
                CircleColorView(color: .red, opacity: redColor)
                CircleColorView(color: .yellow, opacity: yellowColor)
                CircleColorView(color: .green, opacity: greenColor)
                Spacer()
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    nextColor()
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
}
