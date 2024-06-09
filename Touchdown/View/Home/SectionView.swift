//
//  SectionView.swift
//  Touchdown
//
//  Created by Tyler on 2024-06-09.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: VSTACK
        .background(colorGray.clipShape(.rect(cornerRadius: 12)))
        .frame(width: 85)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SectionView(rotateClockwise: true)
        .frame(width: 120, height: 240)
        .padding()
        .background(colorBackground)
}
