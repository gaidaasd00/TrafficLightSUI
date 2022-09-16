//
//  CircleColorView.swift
//  TrafficLightSUI
//
//  Created by Алексей Гайдуков on 15.09.2022.
//

import SwiftUI

struct CircleColorView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 4))
    }
}

struct CircleColorView_Previews: PreviewProvider {
    static var previews: some View {
        CircleColorView(color: .red, opacity: 1)
    }
}
