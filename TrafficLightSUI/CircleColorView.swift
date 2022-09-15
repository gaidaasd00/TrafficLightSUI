//
//  CircleColorView.swift
//  TrafficLightSUI
//
//  Created by Алексей Гайдуков on 15.09.2022.
//

import SwiftUI

struct CircleColorView: View {
    var color: Color
    var isActiv: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 250, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(isActiv ? 1.0 : 0.2)
    }
}

struct CircleColorView_Previews: PreviewProvider {
    static var previews: some View {
        CircleColorView(color: .red, isActiv: true)
    }
}
